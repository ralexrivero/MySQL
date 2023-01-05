CREATE DATABASE IF NOT EXISTS luckyshrub_db;

USE luckyshrub_db;

CREATE TABLE customer_purchases (CustomerID INT AUTO_INCREMENT, CustomerName VARCHAR(100), Location VARCHAR(100), Purchases DECIMAL, PRIMARY KEY (CustomerID));

CREATE TABLE Orders (OrderID INT NOT NULL PRIMARY KEY, ClientID VARCHAR(10), ProductID VARCHAR(10), Quantity INT, Cost DECIMAL(6,2));

INSERT INTO customer_purchases (CustomerName, Location, Purchases) VALUES ('Takahi Ito', 'Graham County', 1500) , ('Jane Murphy', 'Pinal County', 1750), ('Laurina Delgado', 'Santa Cruz County', 1000), ('Benjamin Clauss', 'Gila County', 2500), ('Altay Ayhan', 'Cochise County', 2000), ('Greta Galkina', 'Mohave County', 500), ('Julie Marr', 'Gila County'
, 2250);

INSERT INTO Orders (OrderID, ClientID, ProductID, Quantity, Cost) VALUES (1, "Cl1", "P1", 10, 500), (2, "Cl2", "P2", 5, 100), (3, "Cl3", "P3", 20, 800), (4, "Cl4", "P4", 15, 150), (5, "Cl3", "P3", 10, 450), (6, "Cl2", "P2", 5, 800), (7, "Cl1", "P4", 22, 1200), (8, "Cl3", "P1", 15, 150), (9, "Cl1", "P1", 10, 500), (10, "Cl2", "P2", 5, 100);
