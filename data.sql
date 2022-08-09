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