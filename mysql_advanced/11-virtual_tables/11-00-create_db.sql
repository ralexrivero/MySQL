CREATE DATABASE hatorshop_db;
USE hatorshop_db;

CREATE TABLE Products (
  ProductID INT AUTO_INCREMENT,
  Name VARCHAR(200),
  Price INT,
  PRIMARY KEY (ProductID),
  UNIQUE(Name),
  CHECK (Price > 0)
);
