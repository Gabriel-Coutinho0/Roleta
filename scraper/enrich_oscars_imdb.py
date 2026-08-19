"""
Enriquece os vencedores do Oscar usando os datasets públicos do IMDb.

Não usa TMDB e não faz scraping do site IMDb.
Baixa apenas os arquivos bulk disponibilizados pelo IMDb:
- title.basics.tsv.gz
- title.ratings.tsv.gz
- title.crew.tsv.gz
- name.basics.tsv.gz

O IMDb documenta esses datasets e os campos de rating, votos, duração,
gêneros e IDs em sua documentação oficial:
https://developer.imdb.com/documentation/bulk-data-documentation/

Entrada:
    data/oscars_winners.json

Saída:
    data/oscars_movies.json
    data/oscars_movies.csv
    data/oscars_movies.sql

A coluna de "criticas" não é inventada. Para avaliações especializadas
(Rotten Tomatoes/Metacritic), use uma fonte licenciada ou preencha
manualmente depois. O script traz dados objetivos do IMDb.
"""

from __future__ import annotations

import csv
import gzip
import json
import re
import urllib.request
from pathlib import Path

BASE = Path(__file__).resolve().parent
DATA = BASE / "data"

INPUT = DATA / "oscars_winners.json"

IMDB_BASE = "https://datasets.imdbws.com"

FILES = {
    "basics": DATA / "title.basics.tsv.gz",
    "ratings": DATA / "title.ratings.tsv.gz",
    "crew": DATA / "title.crew.tsv.gz",
    "names": DATA / "name.basics.tsv.gz",
}

OUTPUT_JSON = DATA / "oscars_movies.json"
OUTPUT_CSV = DATA / "oscars_movies.csv"
OUTPUT_SQL = DATA / "oscars_movies.sql"


def download(url: str, destination: Path) -> None:
    if destination.exists():
        print(f"Já existe: {destination.name}")
        return

    print(f"Baixando {destination.name}...")
    urllib.request.urlretrieve(url, destination)
    print(f"OK: {destination.name}")


def normalize(text: str) -> str:
    return re.sub(r"[^a-z0-9]", "", text.lower())


def load_ratings() -> dict[str, dict]:
    result = {}

    with gzip.open(FILES["ratings"], "rt", encoding="utf-8") as file:
        reader = csv.DictReader(file, delimiter="\t")

        for row in reader:
            result[row["tconst"]] = {
                "imdb_rating": (
                    float(row["averageRating"])
                    if row["averageRating"] != r"\N"
                    else None
                ),
                "imdb_votes": (
                    int(row["numVotes"])
                    if row["numVotes"] != r"\N"
                    else None
                ),
            }

    return result


def load_basics(target_ids: set[str]) -> dict[str, dict]:
    result = {}

    with gzip.open(FILES["basics"], "rt", encoding="utf-8") as file:
        reader = csv.DictReader(file, delimiter="\t")

        for row in reader:
            if row["tconst"] not in target_ids:
                continue

            if row["titleType"] != "movie":
                continue

            result[row["tconst"]] = {
                "runtime_minutes": (
                    int(row["runtimeMinutes"])
                    if row["runtimeMinutes"] != r"\N"
                    else None
                ),
                "genres": (
                    []
                    if row["genres"] == r"\N"
                    else row["genres"].split(",")
                ),
                "original_title": (
                    None
                    if row["originalTitle"] == r"\N"
                    else row["originalTitle"]
                ),
                "release_year": (
                    int(row["startYear"])
                    if row["startYear"] != r"\N"
                    else None
                ),
            }

    return result


def load_crew(target_ids: set[str]) -> dict[str, list[str]]:
    result = {}

    with gzip.open(FILES["crew"], "rt", encoding="utf-8") as file:
        reader = csv.DictReader(file, delimiter="\t")

        for row in reader:
            if row["tconst"] not in target_ids:
                continue

            directors = (
                []
                if row["directors"] == r"\N"
                else row["directors"].split(",")
            )

            result[row["tconst"]] = directors

    return result


def load_names(target_name_ids: set[str]) -> dict[str, str]:
    result = {}

    if not target_name_ids:
        return result

    with gzip.open(FILES["names"], "rt", encoding="utf-8") as file:
        reader = csv.DictReader(file, delimiter="\t")

        for row in reader:
            if row["nconst"] in target_name_ids:
                result[row["nconst"]] = row["primaryName"]

    return result


def main() -> None:
    if not INPUT.exists():
        raise FileNotFoundError(
            f"Não encontrei {INPUT}. "
            "Coloque oscars_winners.json dentro da pasta data."
        )

    winners = json.loads(INPUT.read_text(encoding="utf-8"))

    for key, filename in (
        ("title.basics", "title.basics.tsv.gz"),
        ("title.ratings", "title.ratings.tsv.gz"),
        ("title.crew", "title.crew.tsv.gz"),
        ("name.basics", "name.basics.tsv.gz"),
    ):
        download(
            f"{IMDB_BASE}/{filename}",
            FILES[
                {
                    "title.basics": "basics",
                    "title.ratings": "ratings",
                    "title.crew": "crew",
                    "name.basics": "names",
                }[key]
            ],
        )

    imdb_ids = {
        item["imdb_id"]
        for item in winners
        if item.get("imdb_id")
    }

    print("Lendo ratings...")
    ratings = load_ratings()

    print("Lendo dados básicos dos filmes...")
    basics = load_basics(imdb_ids)

    print("Lendo diretores...")
    crew = load_crew(imdb_ids)

    director_ids = {
        director_id
        for ids in crew.values()
        for director_id in ids
    }

    print("Lendo nomes dos diretores...")
    names = load_names(director_ids)

    movies = []

    for item in winners:
        imdb_id = item["imdb_id"]

        basic = basics.get(imdb_id, {})
        rating = ratings.get(imdb_id, {})

        director_ids_for_movie = crew.get(imdb_id, [])

        directors = [
            names[name_id]
            for name_id in director_ids_for_movie
            if name_id in names
        ]

        movies.append(
            {
                "year": item["year"],
                "ceremony": item["ceremony"],
                "winner_title": item["winner_title"],
                "imdb_id": imdb_id,
                "original_title": basic.get("original_title"),
                "release_year": basic.get("release_year"),
                "runtime_minutes": basic.get("runtime_minutes"),
                "genres": basic.get("genres", []),
                "director": ", ".join(directors) or None,
                "imdb_rating": rating.get("imdb_rating"),
                "imdb_votes": rating.get("imdb_votes"),
                "overview": None,
                "poster_url": None,
                "metacritic_score": None,
                "rotten_tomatoes_score": None,
                "critic_summary": None,
            }
        )

    OUTPUT_JSON.write_text(
        json.dumps(
            movies,
            ensure_ascii=False,
            indent=2,
        ),
        encoding="utf-8",
    )

    fields = [
        "year",
        "ceremony",
        "winner_title",
        "imdb_id",
        "original_title",
        "release_year",
        "runtime_minutes",
        "genres",
        "director",
        "imdb_rating",
        "imdb_votes",
        "overview",
        "poster_url",
        "metacritic_score",
        "rotten_tomatoes_score",
        "critic_summary",
    ]

    with OUTPUT_CSV.open(
        "w",
        encoding="utf-8-sig",
        newline="",
    ) as file:
        writer = csv.DictWriter(file, fieldnames=fields)
        writer.writeheader()

        for movie in movies:
            row = movie.copy()
            row["genres"] = ", ".join(row["genres"])
            writer.writerow(row)

    statements = []

    for movie in movies:
        title = movie["winner_title"].replace("'", "''")
        original = (
            movie["original_title"].replace("'", "''")
            if movie["original_title"]
            else None
        )
        director = (
            movie["director"].replace("'", "''")
            if movie["director"]
            else None
        )
        genres = ", ".join(movie["genres"]).replace("'", "''")

        def sql_text(value):
            if value is None:
                return "NULL"
            return "'" + value + "'"

        statements.append(
            "INSERT INTO oscars_years "
            "(year, winner_title, imdb_id, original_title, "
            "release_year, runtime_minutes, genres, director, "
            "imdb_rating, imdb_votes, overview, poster_url, "
            "metacritic_score, rotten_tomatoes_score, critic_summary) "
            "VALUES "
            f"({movie['year']}, "
            f"{sql_text(title)}, "
            f"{sql_text(movie['imdb_id'])}, "
            f"{sql_text(original)}, "
            f"{'NULL' if movie['release_year'] is None else movie['release_year']}, "
            f"{'NULL' if movie['runtime_minutes'] is None else movie['runtime_minutes']}, "
            f"{sql_text(genres)}, "
            f"{sql_text(director)}, "
            f"{'NULL' if movie['imdb_rating'] is None else movie['imdb_rating']}, "
            f"{'NULL' if movie['imdb_votes'] is None else movie['imdb_votes']}, "
            "NULL, NULL, NULL, NULL, NULL) "
            "ON CONFLICT (year) DO UPDATE SET "
            "winner_title = EXCLUDED.winner_title, "
            "imdb_id = EXCLUDED.imdb_id, "
            "original_title = EXCLUDED.original_title, "
            "release_year = EXCLUDED.release_year, "
            "runtime_minutes = EXCLUDED.runtime_minutes, "
            "genres = EXCLUDED.genres, "
            "director = EXCLUDED.director, "
            "imdb_rating = EXCLUDED.imdb_rating, "
            "imdb_votes = EXCLUDED.imdb_votes;"
        )

    OUTPUT_SQL.write_text(
        "\n".join(statements) + "\n",
        encoding="utf-8",
    )

    print()
    print(f"OK: {len(movies)} filmes processados.")
    print(f"JSON: {OUTPUT_JSON}")
    print(f"CSV:  {OUTPUT_CSV}")
    print(f"SQL:  {OUTPUT_SQL}")


if __name__ == "__main__":
    main()
