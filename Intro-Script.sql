-- creating a new Table in our DB
CREATE TABLE bands(
	id SERIAL PRIMARY KEY,
	name VARCHAR NOT NULL,
	genre VARCHAR
);

-- Add data to the table
INSERT INTO bands(name,genre)
VALUES('The Beatles','Rock'),
		('Linkin Park','Rock');


 

-- gets all the values from the table bands
SELECT * FROM bands;

-- get 1 column from bands table
SELECT id,name FROM bands;


-- Deleting a row
DELETE FROM bands;


-- Updating from table
UPDATE bands
SET genre='pop'
WHERE name ='Michael Jackson';


-- Order By DESC

SELECT * FROM bands
ORDER BY name ;




-- Relationships in SQL
CREATE TABLE musicians(
	id SERIAL PRIMARY KEY,
	name VARCHAR NOT NULL UNIQUE,
	age INTEGER NOT NULL,
	sings BOOLEAN,
	dances BOOLEAN,
	-- foreign key
	band_id INTEGER REFERENCES bands(id)
);

SELECT * FROM musicians;
SELECT * FROM bands;


INSERT INTO musicians(name,age,sings,dances)
VALUES('Omar',35,false,false);





-- JOIN
SELECT 
	m.id AS musician_id,
	m.name AS musician_name,
	m.age,
	b.id AS band_id,
	b.name AS banad_name,
	b.genre
FROM musicians m
FULL JOIN bands b ON b.id = m.band_id;