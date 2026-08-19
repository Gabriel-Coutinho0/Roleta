-- Execute no SQL Editor do Supabase.
-- A tabela já possui year, winner_title e imdb_id.
-- Este bloco adiciona os dados cinematográficos.

ALTER TABLE oscars_years
ADD COLUMN IF NOT EXISTS original_title TEXT,
ADD COLUMN IF NOT EXISTS release_year INTEGER,
ADD COLUMN IF NOT EXISTS runtime_minutes INTEGER,
ADD COLUMN IF NOT EXISTS genres TEXT,
ADD COLUMN IF NOT EXISTS director TEXT,
ADD COLUMN IF NOT EXISTS imdb_rating NUMERIC(3,1),
ADD COLUMN IF NOT EXISTS imdb_votes INTEGER,
ADD COLUMN IF NOT EXISTS overview TEXT,
ADD COLUMN IF NOT EXISTS poster_url TEXT,
ADD COLUMN IF NOT EXISTS metacritic_score INTEGER,
ADD COLUMN IF NOT EXISTS rotten_tomatoes_score INTEGER,
ADD COLUMN IF NOT EXISTS critic_summary TEXT;
