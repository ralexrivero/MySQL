CREATE DATABASE Mangata_Gallo;
USE Mangata_Gallo;
CREATE TABLE IF NOT EXISTS Clients(clientID INT UNIQUE NOT NULL PRIMARY KEY AUTO_INCREMENT, fullName VARCHAR(100) NOT NULL, phone VARCHAR(24) NOT NULL UNIQUE);
CREATE TABLE IF NOT EXISTS Items(itemID INT UNIQUE NOT NULL PRIMARY KEY AUTO_INCREMENT, itemName VARCHAR(100), itemPrice DECIMAL(5,2));
CREATE TABLE IF NOT EXISTS Orders(orderID INT UNIQUE NOT NULL PRIMARY KEY AUTO_INCREMENT, clientID INT NOT NULL, itemID INT NOT NULL, quantity INT NOT NULL, cost DECIMAL(5,2) NOT NULL, FOREIGN KEY (clientID) REFERENCES Clients(clientID), FOREIGN KEY (itemID) REFERENCES Items(itemID));