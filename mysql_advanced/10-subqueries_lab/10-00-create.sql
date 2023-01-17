CREATE DATABASE littlelemon_db;

USE littlelemon_db;
CREATE TABLE MenuItems (
  ItemID int NOT NULL,
  Name varchar(200) DEFAULT NULL,
  Type varchar(100) DEFAULT NULL,
  Price int DEFAULT NULL,
  PRIMARY KEY (ItemID)
);

INSERT INTO MenuItems VALUES
(1,'Olives','Starters',5),
(2,'Flatbread','Starters',5),
(3,'Minestrone','Starters',8),
(4,'Tomato bread','Starters',8),
(5,'Falafel','Starters',7),
(6,'Hummus','Starters',5),
(7,'Greek salad','Main Courses',15),
(8,'Bean soup','Main Courses',12),
(9,'Pizza','Main Courses',15),
(10,'Greek yoghurt','Desserts',7),
(11,'Ice cream','Desserts',6),
(12,'Cheesecake','Desserts',4),
(13,'Athens White wine','Drinks',25),
(14,'Corfu Red Wine','Drinks',30),
(15,'Turkish Coffee','Drinks',10),
(16,'Turkish Coffee','Drinks',10),
(17,'Kabasa','Main Courses',17);

CREATE TABLE LowCostMenuItems
(ItemID INT, Name VARCHAR(200), Price INT, PRIMARY KEY(ItemID));
