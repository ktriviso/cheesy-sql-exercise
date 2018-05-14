-- **CHOOSING CHEESE**
CREATE DATABASE cheeses_db;

CREATE TABLE cheese (
id SERIAL PRIMARY KEY,
name TEXT,
color TEXT,
origin TEXT,
stink_level INTEGER
);

-- Find all the cheeses
SELECT *
FROM cheese;

-- Find all the French cheeses
 SELECT *
 FROM cheese
 WHERE origin = "french";

-- Find all the English cheeses
SELECT *
FROM cheese
WHERE origin = "english";

-- Find all cheeses with a stink level of 2
SELECT *
FROM cheese
WHERE stink_level > 2;

-- Find all cheeses with a stink level of 10
SELECT *
FROM cheese
WHERE stink_level < 10;

-- Find all French cheeses with a stink level of 5
SELECT *
FROM cheese
WHERE origin='french'
AND stink_level = 5;

-- Find all Irish cheeses with a stink level of 6
SELECT *
FROM cheese
WHERE stink_level = 6
AND origin = 'irish';

-- Find all cheeses with a stink level of at least 4, but no greater than 8.
SELECT *
FROM cheese
WHERE stink_level >= 4
AND stink_level < 9;

-- Find all American and English cheeses.
SELECT *
FROM cheese
WHERE origin = 'american'
OR origin = 'english';
-- SELECT * FROM cheese WHERE origin IN ('english', 'american');

-- Find all cheeses that are not from France.
SELECT *
FROM cheese
WHERE NOT origin = 'french';

-- **RESTOCKING CHEESE**
-- Change the stink level of Roquefort to 3
UPDATE cheese
SET slink_level = 3
WHERE name = 'Roquefort';

-- Change the color of Teleme to "mauve"
UPDATE cheese
SET color='mauve'
WHERE name = 'Teleme';

-- Delete the Hooligan cheese
DELETE
FROM cheese
WHERE name = 'Hooligan';

-- Change the stink level of Stichelton to be 7
UPDATE cheese
SET stink_level=7
WHERE name = 'Stichelton';

-- Add the cheese "Monterey Jack", an American cheese with a stink level of 0
INSERT INTO cheese
VALUES (
    DEFAULT,
    'Monterey Jack',
    '',
    'american',
    0
);

-- Delete Durrus
DELETE
FROM cheese
WHERE name = 'Durrus';
