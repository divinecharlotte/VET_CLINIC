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
    age INT,
    PRIMARY KEY (id)
);

ALTER TABLE owners ALTER column age SET DATA TYPE INT;
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

--- create vets table
CREATE TABLE vets(
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR,
    age INT,
    date_of_graduation DATE,
    PRIMARY KEY (id)
);

-- Create a join table to store species and vets.
CREATE TABLE specialization(
    species_id INT REFERENCES species(id),
    vet_id INT REFERENCES vets(id)
);

-- Create a join table to store animals and vets.
CREATE TABLE visits(
    animal_id INT REFERENCES animals(id),
    vet_id INT REFERENCES vets(id),
    date_of_visit DATE
);

-- Add an email column to your owners table
ALTER TABLE owners ADD COLUMN email VARCHAR(120);
