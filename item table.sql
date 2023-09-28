CREATE TABLE item(
	id     INTEGER SERIAL PRIMARY KEY,
    product_ID INT REFERENCES product(id), -- // this is the foreign key which will be using for the joining of the two or more tables together 
	size   INT NOT NULL,
	color  VARCHAR(30) NOT NULL,
	picure VARCHAR(256) NOT NULL,
	price  NUMERIC(6,2) NOT NULL
	
);