CREATE TABLE sales_order(
	id SERIAL PRIMARY KEY,
	cust_id INTEGER REFERENCES customer(id),
	sales_person_id REFERENCES sales_person(id),
	time_order_taken TIMESTAMP NOT NULL,
	purchase_order_number INTEGER NOT NULL,
	credit_card_number VARCHAR(16) NOT NULL,
	credit_card_exp_month SMALLINT NOT NULL,
	credit_card_exp_date SMALLINT NOT NULL,
	credit_card_secret_code VARCHAR(100) NOT NULL
	
);