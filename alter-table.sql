ALTER TABLE animals
ADD location VARCHAR(40);

INSERT INTO animals(type, age, location, name)
VALUES ('fish', 10, 'cuba', 'goldy');

INSERT INTO animals(type, age, location, name)
VALUES ('cat', 1, 'usa', 'ginger');

INSERT INTO animals(type, age, location, name)
VALUES ('dog', 11, 'usa', 'clifford');

ALTER TABLE animals
RENAME COLUMN type TO "species";

ALTER TABLE animals
ALTER COLUMN species TYPE VARCHAR(30);