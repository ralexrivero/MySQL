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

INSERT INTO Employees (FullName, JobTitle, County, LineManagerID)
VALUES
('Seamus Harrigan', 'Manager', 'Pinal County', 3),
('John Smith', 'Manager', 'New York', 1),
('Jane Doe', 'Assistant Manager', 'New York', 3),
('Bob Johnson', 'Sales Representative', 'California', 1),
('Alice Williams', 'Customer Service Representative', 'New York', 1),
('Mike Brown', 'Accountant', 'New York', 3);

INSERT INTO LegacyClients (ClientID, FullName, ContactNumber, Address)
VALUES
('Cl001', 'Samantha Smith', 25551212, '321 Main St, New York, NY'),
('Cl002', 'James Doe', 45551111, '654 Park Ave, San Francisco, CA'),
('Cl003', 'Emily Johnson', 31452222, '987 Oak St, St. Louis, MO'),
('Cl004', 'William Williams', 81553333, '369 Maple St, Los Angeles, CA'),
('Cl005', 'Ashley Brown', 61954444, '753 Pine St, San Diego, CA');

INSERT INTO Customers(FullName, PhoneNumber)
VALUES
('James Johnson', 987654321),
('Emily Thompson', 123987456),
('David Anderson', 456789123),
('Sara Smith', 963258147),
('Michael Brown', 789456123),
('Elizabeth Davis', 159753246),
('William Thompson', 321654987),
('Jessica Jones', 741258963),
('Robert Smith', 963852741),
('Linda Anderson', 456789321);

INSERT INTO Bookings(BookingDate, TableNumber, NumberOfGuests, CustomerID)
VALUES
('2022-07-25', 3, 2, 4),
('2023-01-03', 9, 6, 8),
('2021-05-19', 5, 3, 7),
('2022-02-14', 1, 7, 6),
('2021-08-30', 4, 8, 2),
('2022-09-12', 6, 4, 1),
('2021-12-24', 2, 9, 5),
('2021-06-06', 8, 1, 3),
('2022-03-22', 7, 5, 9),
('2022-01-01', 3, 2, 8),
('2022-04-15', 4, 1, 7),
('2021-11-07', 5, 8, 3),
('2022-05-23', 2, 6, 9),
('2021-09-16', 1, 3, 8),
('2022-06-30', 7, 9, 4),
('2021-10-29', 6, 2, 5),
('2022-08-11', 3, 4, 1),
('2021-07-13', 9, 7, 6),
('2022-10-26', 8, 5, 2),
('2021-08-01', 4, 1, 9);
