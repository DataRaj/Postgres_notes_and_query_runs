CREATE TABLE Product(
	id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY
	product_ID INT REFERENCES 
	product_type(id),
	name VARCHAR(30) NOT NULL,
	supplier VACHAR(30) NOT NULL,
	description VARCHAR(300),
	
	date_entered TIMESTAMP NOT NULL,
	
);