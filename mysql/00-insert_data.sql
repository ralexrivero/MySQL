CREATE DATABASE IF NOT EXISTS bookshop;
USE bookshop;
CREATE TABLE customers (customerID INT, customerName VARCHAR(50), customerAddress VARCHAR(255));
INSERT INTO customers (customerID, customerName, customerAddress) VALUES (1, 'Jack', '115 Old street Belfast');
