INSERT INTO Clients (ClientID, FullName, ContactNumber, Address)
VALUES
('Cl001', 'John Smith', 123456789, '123 Main Street'),
('Cl002', 'Jane Doe', 234567890, '456 Park Avenue'),
('Cl003', 'Bob Johnson', 345678901, '789 Maple Street'),
('Cl004', 'Samantha Williams', 456789012, '321 Oak Avenue'),
('Cl005', 'Christopher Brown', 567890124, '654 Pine Street'),
('Cl006', 'Emily Davis', 678901235, '246 Cedar Boulevard'),
('Cl007', 'William Thompson', 780123456, '369 Maple Avenue'),
('Cl008', 'Ashley Johnson', 890234567, '159 Oak Street'),
('Cl009', 'James Rodriguez', 912345678, '753 Pine Avenue'),
('Cl010', 'Megan Davis', 12346789, '964 Cedar Boulevard');


INSERT INTO Orders (ClientID, ProductID, Quantity, Cost)
VALUES
('Cl001', 'Pr1', 2, 10.00),
('Cl001', 'Pr2', 1, 5.00),
('Cl001', 'Pr3', 1, 15.00),
('Cl002', 'Pr1', 1, 10.00),
('Cl002', 'Pr2', 1, 5.00),
('Cl002', 'Pr3', 1, 15.00),
('Cl003', 'Pr1', 1, 10.00),
('Cl003', 'Pr2', 1, 5.00),
('Cl003', 'Pr3', 1, 15.00),
('Cl004', 'Pr1', 1, 10.00),
('Cl004', 'Pr2', 1, 5.00),
('Cl004', 'Pr3', 1, 15.00),
('Cl005', 'Pr1', 1, 10.00),
('Cl005', 'Pr2', 1, 5.00),
('Cl005', 'Pr3', 1, 15.00),
('Cl006', 'Pr1', 1, 10.00),
('Cl006', 'Pr2', 1, 5.00),
('Cl006', 'Pr3', 1, 15.00);