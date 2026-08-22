"""
Enriquece os vencedores do Oscar usando:

1. Datasets públicos do IMDb
2. OMDb API

Não usa TMDB.

IMDb fornece:
- IMDb ID
- título original
- ano
- duração
- gêneros
- diretor
- nota IMDb
- quantidade de votos

OMDb fornece:
- sinopse
- poster
- Metacritic
- Rotten Tomatoes
- demais informações disponíveis na API

Entrada:
    data/oscars_winners.json

Saída:
    data/oscars_movies.json
    data/oscars_movies.csv
    data/oscars_movies.sql
"""

from __future__ import annotations

import csv
import gzip
import json
import os
import re
import time
import urllib.request
from pathlib import Path

import requests


# =========================================================
# CAMINHOS
# =========================================================

BASE = Path(__file__).resolve().parent

DATA = BASE / "data"

INPUT = DATA / "oscars_winners.json"


# =========================================================
# IMDb
# =========================================================

IMDB_BASE = "https://datasets.imdbws.com"


FILES = {
    "basics": DATA / "title.basics.tsv.gz",
    "ratings": DATA / "title.ratings.tsv.gz",
    "crew": DATA / "title.crew.tsv.gz",
    "names": DATA / "name.basics.tsv.gz",
}


# =========================================================
# OMDb
# =========================================================

OMDB_URL = "https://www.omdbapi.com/"

OMDB_API_KEY = ""


# =========================================================
# SAÍDAS
# =========================================================

OUTPUT_JSON = DATA / "oscars_movies.json"

OUTPUT_CSV = DATA / "oscars_movies.csv"

OUTPUT_SQL = DATA / "oscars_movies.sql"


# =========================================================
# DOWNLOAD IMDb
# =========================================================

def download(url: str, destination: Path) -> None:

    if destination.exists():

        print(
            f"Já existe: {destination.name}"
        )

        return


    print(
        f"Baixando {destination.name}..."
    )


    urllib.request.urlretrieve(
        url,
        destination
    )


    print(
        f"OK: {destination.name}"
    )


# =========================================================
# NORMALIZAÇÃO
# =========================================================

def normalize(text: str) -> str:

    return re.sub(
        r"[^a-z0-9]",
        "",
        text.lower()
    )


# =========================================================
# IMDb RATINGS
# =========================================================

def load_ratings() -> dict[str, dict]:

    result = {}


    with gzip.open(
        FILES["ratings"],
        "rt",
        encoding="utf-8"
    ) as file:

        reader = csv.DictReader(
            file,
            delimiter="\t"
        )


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

# =========================================================
# IMDb BASICS
# =========================================================

def load_basics(
    target_ids: set[str]
) -> dict[str, dict]:

    result = {}


    with gzip.open(
        FILES["basics"],
        "rt",
        encoding="utf-8"
    ) as file:

        reader = csv.DictReader(
            file,
            delimiter="\t"
        )


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


# =========================================================
# IMDb CREW
# =========================================================

def load_crew(
    target_ids: set[str]
) -> dict[str, list[str]]:

    result = {}


    with gzip.open(
        FILES["crew"],
        "rt",
        encoding="utf-8"
    ) as file:

        reader = csv.DictReader(
            file,
            delimiter="\t"
        )


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


# =========================================================
# IMDb NAMES
# =========================================================

def load_names(
    target_name_ids: set[str]
) -> dict[str, str]:

    result = {}


    if not target_name_ids:
        return result


    with gzip.open(
        FILES["names"],
        "rt",
        encoding="utf-8"
    ) as file:

        reader = csv.DictReader(
            file,
            delimiter="\t"
        )


        for row in reader:

            if row["nconst"] in target_name_ids:

                result[
                    row["nconst"]
                ] = row["primaryName"]


    return result


# =========================================================
# OMDb
# =========================================================

def load_omdb(
    imdb_id: str
) -> dict:

    if not OMDB_API_KEY:

        raise RuntimeError(
            "\n"
            "OMDB_API_KEY não foi configurada.\n\n"
            "No PowerShell, execute:\n\n"
            '$env:OMDB_API_KEY=""\n\n'
            "Depois execute novamente:\n\n"
            "python enrich_oscars_imdb.py\n"
        )


    try:

        response = requests.get(

            OMDB_URL,

            params={
                "apikey": OMDB_API_KEY,
                "i": imdb_id,
                "plot": "full",
                "r": "json",
            },

            timeout=30

        )


        response.raise_for_status()


        data = response.json()


    except requests.RequestException as error:

        print(
            f"Erro ao consultar OMDb "
            f"({imdb_id}): {error}"
        )

        return {}


    if data.get("Response") != "True":

        print(
            f"OMDb não encontrou "
            f"{imdb_id}: "
            f"{data.get('Error', 'erro desconhecido')}"
        )

        return {}


    return data


# =========================================================
# PARSE METACRITIC
# =========================================================

def parse_metacritic(
    value
):

    if not value:
        return None


    if value == "N/A":
        return None


    try:

        return int(value)

    except (
        ValueError,
        TypeError
    ):

        return None


# =========================================================
# PARSE ROTTEN TOMATOES
# =========================================================

def parse_rotten_tomatoes(
    ratings: list
):

    for rating in ratings:

        if rating.get("Source") != "Rotten Tomatoes":
            continue


        value = rating.get(
            "Value"
        )


        if not value:
            return None


        value = value.replace(
            "%",
            ""
        ).strip()


        try:

            return int(value)

        except ValueError:

            return None


    return None


# =========================================================
# TEXTO SEGURO
# =========================================================

def clean_text(
    value
):

    if value is None:
        return None


    if not isinstance(
        value,
        str
    ):
        return value


    value = value.strip()


    if not value:
        return None


    if value.upper() == "N/A":
        return None


    return value

# =========================================================
# MAIN
# =========================================================

def main() -> None:

    # -----------------------------------------------------
    # Verifica entrada
    # -----------------------------------------------------

    if not INPUT.exists():

        raise FileNotFoundError(

            f"Não encontrei {INPUT}. "

            "Coloque oscars_winners.json "
            "dentro da pasta data."

        )


    # -----------------------------------------------------
    # Verifica OMDb
    # -----------------------------------------------------

    if not OMDB_API_KEY:

        raise RuntimeError(

            "\n"
            "OMDB_API_KEY não foi configurada.\n\n"

            "No PowerShell:\n\n"

            '$env:OMDB_API_KEY=""\n\n'

            "Depois:\n\n"

            "python enrich_oscars_imdb.py\n"

        )


    # -----------------------------------------------------
    # Carrega vencedores
    # -----------------------------------------------------

    winners = json.loads(

        INPUT.read_text(
            encoding="utf-8"
        )

    )


    print(
        f"{len(winners)} vencedores encontrados."
    )


    # -----------------------------------------------------
    # Baixa datasets IMDb
    # -----------------------------------------------------

    for key, filename in (

        (
            "title.basics",
            "title.basics.tsv.gz"
        ),

        (
            "title.ratings",
            "title.ratings.tsv.gz"
        ),

        (
            "title.crew",
            "title.crew.tsv.gz"
        ),

        (
            "name.basics",
            "name.basics.tsv.gz"
        ),

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

            ]

        )


    # -----------------------------------------------------
    # IMDb IDs
    # -----------------------------------------------------

    imdb_ids = {

        item["imdb_id"]

        for item in winners

        if item.get("imdb_id")

    }


    # -----------------------------------------------------
    # Carrega IMDb
    # -----------------------------------------------------

    print(
        "Lendo ratings IMDb..."
    )

    ratings = load_ratings()


    print(
        "Lendo dados básicos dos filmes..."
    )

    basics = load_basics(
        imdb_ids
    )


    print(
        "Lendo diretores..."
    )

    crew = load_crew(
        imdb_ids
    )


    director_ids = {

        director_id

        for ids in crew.values()

        for director_id in ids

    }


    print(
        "Lendo nomes dos diretores..."
    )

    names = load_names(
        director_ids
    )


    # -----------------------------------------------------
    # Filmes
    # -----------------------------------------------------

    movies = []


    total = len(winners)


    for index, item in enumerate(
        winners,
        start=1
    ):

        imdb_id = item["imdb_id"]


        print(
            f"\n[{index}/{total}] "
            f"{item['year']} - "
            f"{item['winner_title']}"
        )


        basic = basics.get(
            imdb_id,
            {}
        )


        rating = ratings.get(
            imdb_id,
            {}
        )


        director_ids_for_movie = crew.get(
            imdb_id,
            []
        )


        directors = [

            names[name_id]

            for name_id
            in director_ids_for_movie

            if name_id in names

        ]


        # -------------------------------------------------
        # OMDb
        # -------------------------------------------------

        print(
            f"  Consultando OMDb: {imdb_id}"
        )


        omdb = load_omdb(
            imdb_id
        )


        # -------------------------------------------------
        # Dados OMDb
        # -------------------------------------------------

        overview = clean_text(
            omdb.get("Plot")
        )


        poster_url = clean_text(
            omdb.get("Poster")
        )


        metacritic_score = parse_metacritic(
            omdb.get("Metascore")
        )


        rotten_tomatoes_score = (
            parse_rotten_tomatoes(
                omdb.get(
                    "Ratings",
                    []
                )
            )
        )


        # -------------------------------------------------
        # Críticas
        # -------------------------------------------------

        critic_summary = None


        # -------------------------------------------------
        # Objeto final
        # -------------------------------------------------

        movie = {

            "year":
                item["year"],

            "ceremony":
                item["ceremony"],

            "winner_title":
                item["winner_title"],

            "imdb_id":
                imdb_id,

            "original_title":
                basic.get(
                    "original_title"
                ),

            "release_year":
                basic.get(
                    "release_year"
                ),

            "runtime_minutes":
                basic.get(
                    "runtime_minutes"
                ),

            "genres":
                basic.get(
                    "genres",
                    []
                ),

            "director":
                ", ".join(
                    directors
                ) or None,

            "imdb_rating":
                rating.get(
                    "imdb_rating"
                ),

            "imdb_votes":
                rating.get(
                    "imdb_votes"
                ),

            "overview":
                overview,

            "poster_url":
                poster_url,

            "metacritic_score":
                metacritic_score,

            "rotten_tomatoes_score":
                rotten_tomatoes_score,

            "critic_summary":
                critic_summary,

        }


        movies.append(
            movie
        )


        # -------------------------------------------------
        # Pequena pausa
        # -------------------------------------------------

        time.sleep(
            0.2
        )


    # -----------------------------------------------------
    # JSON
    # -----------------------------------------------------

    OUTPUT_JSON.write_text(

        json.dumps(

            movies,

            ensure_ascii=False,

            indent=2

        ),

        encoding="utf-8"

    )


    print(
        "\nJSON gerado com sucesso."
    )


    # -----------------------------------------------------
    # CSV
    # -----------------------------------------------------

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

        newline=""

    ) as file:

        writer = csv.DictWriter(

            file,

            fieldnames=fields

        )


        writer.writeheader()


        for movie in movies:

            row = movie.copy()


            row["genres"] = ", ".join(
                row["genres"]
            )


            writer.writerow(
                row
            )


    print(
        "CSV gerado com sucesso."
    )

        # =====================================================
    # SQL
    # =====================================================

    statements = []


    for movie in movies:

        def sql_text(
            value
        ):

            if value is None:

                return "NULL"


            value = str(
                value
            )


            value = value.replace(
                "'",
                "''"
            )


            return f"'{value}'"


        title = movie[
            "winner_title"
        ]


        original = movie[
            "original_title"
        ]


        director = movie[
            "director"
        ]


        genres = ", ".join(
            movie["genres"]
        )


        statement = f"""
INSERT INTO oscars_years (
    year,
    winner_title,
    imdb_id,
    original_title,
    release_year,
    runtime_minutes,
    genres,
    director,
    imdb_rating,
    imdb_votes,
    overview,
    poster_url,
    metacritic_score,
    rotten_tomatoes_score,
    critic_summary
)
VALUES (
    {movie['year']},
    {sql_text(title)},
    {sql_text(movie['imdb_id'])},
    {sql_text(original)},
    {movie['release_year'] if movie['release_year'] is not None else 'NULL'},
    {movie['runtime_minutes'] if movie['runtime_minutes'] is not None else 'NULL'},
    {sql_text(genres)},
    {sql_text(director)},
    {movie['imdb_rating'] if movie['imdb_rating'] is not None else 'NULL'},
    {movie['imdb_votes'] if movie['imdb_votes'] is not None else 'NULL'},
    {sql_text(movie['overview'])},
    {sql_text(movie['poster_url'])},
    {movie['metacritic_score'] if movie['metacritic_score'] is not None else 'NULL'},
    {movie['rotten_tomatoes_score'] if movie['rotten_tomatoes_score'] is not None else 'NULL'},
    {sql_text(movie['critic_summary'])}
)
ON CONFLICT (year)
DO UPDATE SET

    winner_title = EXCLUDED.winner_title,

    imdb_id = EXCLUDED.imdb_id,

    original_title = EXCLUDED.original_title,

    release_year = EXCLUDED.release_year,

    runtime_minutes = EXCLUDED.runtime_minutes,

    genres = EXCLUDED.genres,

    director = EXCLUDED.director,

    imdb_rating = EXCLUDED.imdb_rating,

    imdb_votes = EXCLUDED.imdb_votes,

    overview = EXCLUDED.overview,

    poster_url = EXCLUDED.poster_url,

    metacritic_score = EXCLUDED.metacritic_score,

    rotten_tomatoes_score =
        EXCLUDED.rotten_tomatoes_score,

    critic_summary =
        EXCLUDED.critic_summary;
""".strip()


        statements.append(
            statement
        )


    OUTPUT_SQL.write_text(

        "\n\n".join(
            statements
        ) + "\n",

        encoding="utf-8"

    )


    # =====================================================
    # FINAL
    # =====================================================

    print()

    print(
        "=" * 60
    )

    print(
        "PROCESSAMENTO CONCLUÍDO"
    )

    print(
        "=" * 60
    )

    print(
        f"Filmes processados: {len(movies)}"
    )

    print(
        f"JSON: {OUTPUT_JSON}"
    )

    print(
        f"CSV:  {OUTPUT_CSV}"
    )

    print(
        f"SQL:  {OUTPUT_SQL}"
    )

    print(
        "=" * 60
    )


# =========================================================
# EXECUÇÃO
# =========================================================

if __name__ == "__main__":

    main()
