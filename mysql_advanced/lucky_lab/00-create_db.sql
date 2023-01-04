CREATE DATABASE lucky;
USE lucky;
CREATE TABLE customer_purchases (CustomerID INT AUTO_INCREMENT, CustomerName VARCHAR(100), Location VARCHAR(100), Purchases DECIMAL, PRIMARY KEY (CustomerID));

INSERT INTO customer_purchases (CustomerName, Location, Purchases) VALUES ('Takahi Ito', 'Graham County', 1500) , ('Jane Murphy', 'Pinal County', 1750), ('Laurina Delgado', 'Santa Cruz County', 1000), ('Benjamin Clauss', 'Gila County', 2500), ('Altay Ayhan', 'Cochise County', 2000), ('Greta Galkina', 'Mohave County', 500), ('Julie Marr', 'Gila County'
, 2250);