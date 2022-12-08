/*Default constraint*/
ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0

INSERT INTO customers(first_name, last_name, gender)
VALUES ("Peter", "Figaro", "m");

SELECT * FROM customers;

ALTER TABLE customers
ALTER COLUMN number_of_complaints DROP DEFAULT;

CREATE TABLE companies
(
	company_id VARCHAR(255),  
	company_name VARCHAR(255),  
	headquarters_phone_number VARCHAR(255) DEFAULT 'X',   
UNIQUE KEY (headquarters_phone_number)
);

ALTER TABLE companies
ALTER COLUMN headquarters_phone_number DROP DEFAULT;

ALTER TABLE COMPANIES
CHANGE COLUMN company_name company_name VARCHAR(255) DEFAULT 'X';

INSERT INTO companies(company_id, headquarters_phone_number)
VALUES ('fig', 10);

SELECT * FROM companies;
