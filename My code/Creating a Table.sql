/*Creating a Table*/
USE sales;
CREATE TABLE sales
(
	purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL
);
/*Auto increment is used to create column where the numbers get filled up automatically in 
sequence. 1 2 3 4 5*/

USE sales;
CREATE TABLE customers
(
	customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
	number_of_complaints INT
);
