CREATE DATABASE IF NOT EXISTS little_lemon;
USE little_lemon;
CREATE TABLE FoodOrders (OrderID INT, Quantity INT, Cost Decimal(4,2));
SHOW COLUMNS FROM FoodOrders;
CREATE TABLE Customers (CustomerID INT PRIMARY KEY NOT NULL);
DESCRIBE Customers;