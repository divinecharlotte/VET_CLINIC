/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR,
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL
);

ALTER TABLE animals ADD COLUMN species varchar;

--  Create a table to store owners.
CREATE TABLE owners(
    id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    full_name VARCHAR NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY (id)
);

-- Create a table to store species.
CREATE TABLE species(
    id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    name VARCHAR NOT NULL,
    PRIMARY KEY (id)
);

-- Add primary key to id column of animals table.
ALTER TABLE animals ADD PRIMARY KEY (id);

-- set id column of animals table as autoincrement primary key.
ALTER TABLE animals ALTER COLUMN id SET DEFAULT nextval('animals_pkey');

-- Edit the animals table to drop the species column.
ALTER TABLE animals DROP COLUMN species;

-- Add columns species_id as foreign key to animals table.
ALTER TABLE animals ADD COLUMN species_id INT REFERENCES species(id);

-- Add columns owner_id as foreign key to animals table.
ALTER TABLE animals ADD COLUMN owner_id INT REFERENCES owners(id);

