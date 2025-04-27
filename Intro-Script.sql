-- creating a new Table in our DB
CREATE TABLE bands(
	id SERIAL PRIMARY KEY,
	name VARCHAR NOT NULL,
	genre VARCHAR
);

-- Add data to the table
INSERT INTO bands(name,genre) VALUES'('The Beatles','Rock');