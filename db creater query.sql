CREATE TABLE customer(
	id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(60) NOT NULL,
	company VARCHAR(40) NOT NULL,
	street VARCHAR(50) NOT NULL,
	city VARCHAR(20) NOT NULL,
	state VARCHAR(60) NOT NULL,
	zip VARCHAR(60) NOT NULL,
	phone VARCHAR(20) NOT NULL,
	birth_date DATE NOT NULL,
	sex CHAR(1) NOT NULL,
	date_entered TIMESTAMP NOT NULL,
	
);