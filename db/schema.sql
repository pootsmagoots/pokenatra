DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name TEXT,
  poke_type TEXT,
  cp Int,
  img_url TEXT
);

CREATE TABLE trainers(
  id SERIAL PRIMARY KEY,
  name TEXT,
  level Int,
  img_url TEXT
);
