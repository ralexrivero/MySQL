CREATE DATABASE IF NOT EXISTS lucky_shrub;
USE lucky_shrub;
CREATE TABLE IF NOT EXISTS Orders (OrderID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, Department VARCHAR(50), OrderDate DATE, OrderQty INT, OrderTotal INT);