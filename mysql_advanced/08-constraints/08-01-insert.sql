INSERT INTO Clients (fullName, phone) VALUES
('John Smith', '555-1234'),
('Jane Doe', '555-5678'),
('John Doe', '555-9012'),
('Jane Smith', '555-3456');

INSERT INTO Items (itemName, itemPrice) VALUES
('Bread', 1.50),
('Milk', 2.50),
('Eggs', 3.50),
('Cheese', 4.50);

INSERT INTO Orders (clientID, itemID, quantity, cost) VALUES
(1, 1, 2, 3.00),
(1, 2, 1, 2.50),
(2, 3, 1, 3.50),
(3, 4, 1, 4.50),
(4, 1, 1, 1.50);
