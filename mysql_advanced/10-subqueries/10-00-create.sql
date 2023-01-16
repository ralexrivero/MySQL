CREATE DATABASE littlelemon_db;
USE littlelemon_db;
CREATE TABLE MenuItems (
  ItemID INT,
  Name VARCHAR(200),
  Type VARCHAR(100),
  Price INT,
  PRIMARY KEY (ItemID)
);
CREATE TABLE Menus (
  MenuID INT,
  ItemID INT,
  Cuisine VARCHAR(100),
  PRIMARY KEY (MenuID,ItemID)
);
CREATE TABLE Bookings (
  BookingID INT,
  TableNo INT,
  GuestFirstName VARCHAR(100),
  GuestLastName VARCHAR(100),
  BookingSlot TIME,
  EmployeeID INT,
  PRIMARY KEY (BookingID)
);
CREATE TABLE TableOrders (
  OrderID INT,
  TableNo INT,
  MenuID INT,
  BookingID INT,
  BillAmount INT,
  Quantity INT,
  PRIMARY KEY (OrderID,TableNo)
);