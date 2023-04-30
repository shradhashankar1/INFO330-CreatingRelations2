CREATE TABLE Pokemon (
    pokedex_number INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    type1 TEXT NOT NULL,
    type2 TEXT,
    hp INTEGER NOT NULL,
    attack INTEGER NOT NULL,
    defense INTEGER NOT NULL,
    sp_attack INTEGER NOT NULL,
    sp_defense INTEGER NOT NULL,
    speed INTEGER NOT NULL
);


.mode csv
.import pokemon.csv Pokemon


CREATE TABLE Evolution (
    pokedex_number INTEGER NOT NULL,
    evolves_from TEXT,
    method TEXT NOT NULL,
    evolve_to TEXT NOT NULL,
    PRIMARY KEY(pokedex_number, evolve_to),
    FOREIGN KEY(pokedex_number) REFERENCES Pokemon(pokedex_number)
);


.mode csv
.import pokemon.csv Evolution


CREATE TABLE Abilities (
    pokedex_number INTEGER NOT NULL,
    ability TEXT NOT NULL,
    PRIMARY KEY(pokedex_number, ability),
    FOREIGN KEY(pokedex_number) REFERENCES Pokemon(pokedex_number)
);

-- Import data from the CSV file into the Abilities table
.mode csv
.import pokemon.csv Abilities


CREATE TABLE Egg_Group (
    pokedex_number INTEGER NOT NULL,
    egg_group TEXT NOT NULL,
    PRIMARY KEY(pokedex_number, egg_group),
    FOREIGN KEY(pokedex_number) REFERENCES Pokemon(pokedex_number)
);


.mode csv
.import pokemon.csv Egg_Group
