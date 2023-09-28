CREATE TABLE sales_item(
    id SERIAL PRIMARY KEY,
    item_id INTEGER REFERENCES item(id),
    sales_order_id INTGER REFERENCES sales_order(id),
     quantity INTEGER NOT NULL,
	discount NUMERIC(3,2) NULL DEFAULT 0,
	taxable BOOLEAN NOT NULL DEFAULT FALSE,
	sales_tax_rate NUMERIC(5,2) NOT NULL DEFAULT 0
);