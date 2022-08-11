/* Populate database with sample data. */
INSERT INTO
    animals(
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES
    ('Agumon', '03/02/2020', 0, TRUE, 10.23),
    ('Gabumon', '15/11/2018', 2, TRUE, 8),
    ('Pikachu', '07/01/2021', 1, FALSE, 15.04),
    ('Devimon', '12/05/2017', 5, TRUE, 11);

    -- Instert new data into animals table.
INSERT INTO
    animals(
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES
    ('Charmander', '08/02/2020', 0, FALSE, -11.0),
    ('Plantmon', '15/11/2021', 2, TRUE, -5.7),
    ('Squirtle', '02/04/1993', 3, FALSE, -12.13),
    ('Angemon', '12/06/2005', 1, TRUE, -45.0),
    ('Boarmon', '07/06/2005', 7, TRUE, 20.4),
    ('Blossom', '13/10/1998', 3, TRUE, 17.0),
    ('Ditto', '14/05/2022', 4, TRUE, 22.0);

--- insert new data into owners table
INSERT INTO
    owners(full_name,age)
VALUES
    ('Sam Smith',34),
    ('Jennifer Orwell',19),
    ('Bob',45),
    ('Melody Pond',77),
    ('Dean Winchester',14),
    ('Jodie Whittaker',38);

--- insert new data in species

INSERT INTO 
    species(name)
VALUES
    ('Pokemon'),
    ('Digimon');
    

-- Edit species column for the animals table.
UPDATE
    animals
SET
    species_id = 1
WHERE
    species_id IS NULL;



-- Edit owner_id column for the animals table.
UPDATE
    animals
SET
    owner_id = 1
WHERE
    name = 'Agumon';

UPDATE
    animals
SET
    owner_id = 2
WHERE
    name IN ('Gabumon', 'Pikachu');

UPDATE
    animals
SET
    owner_id = 3
WHERE
    name IN ('Devimon', 'Plantmon');

UPDATE
    animals
SET
    owner_id = 4
WHERE
    name IN ('Charmander', 'Squirtle', 'Blossom');

UPDATE
    animals
SET
    owner_id = 5
WHERE
    name IN ('Angemon', 'Boarmon');



