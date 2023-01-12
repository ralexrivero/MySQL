CREATE DATABASE IF NOT EXISTS luckyshrub_db;
USE luckyshrub_db;
CREATE TABLE IF NOT EXISTS Employee (EmployeeID INT NOT NULL PRIMARY KEY, FullName VARCHAR(255), JobTitle VARCHAR(100), County VARCHAR(100), LineManagerID INT);
CREATE TABLE IF NOT EXISTS EmployeeContactInfo (EmployeeID INT NOT NULL PRIMARY KEY, ContactNumber INT, Email VARCHAR(255));

INSERT INTO Employee (EmployeeID, FullName, JobTitle, County, LineManagerID)
VALUES
(1, 'John Smith', 'Manager', 'New York', NULL),
(2, 'Jane Doe', 'Developer', 'California', 1),
(3, 'Bob Johnson', 'Developer', 'Texas', 1),
(4, 'Samantha Williams', 'QA Tester', 'California', 1),
(5, 'Michael Brown', 'Developer', 'New York', 2),
(6, 'Emily Davis', 'Designer', 'California', 2),
(7, 'Matthew Miller', 'Developer', 'Texas', 3),
(8, 'Lauren Garcia', 'Developer', 'California', 3),
(9, 'Jacob Martinez', 'QA Tester', 'Texas', 4),
(10, 'Isabella Thompson', 'Designer', 'New York', 4),
(11, 'Ethan White', 'Developer', 'California', 5),
(12, 'Madison Harris', 'Developer', 'Texas', 5),
(13, 'Aiden Clark', 'QA Tester', 'New York', 6),
(14, 'Abigail Lewis', 'Designer', 'California', 6),
(15, 'Natalie Rodriguez', 'Developer', 'Texas', 7),
(16, 'Sofia James', 'Developer', 'New York', 7),
(17, 'Mia Wilson', 'QA Tester', 'California', 8),
(18, 'Isabelle Moore', 'Designer', 'Texas', 8),
(19, 'Avery Jackson', 'Developer', 'New York', 9),
(20, 'Ella Martin', 'Developer', 'California', 9);

INSERT INTO EmployeeContactInfo (EmployeeID, ContactNumber, Email) VALUES
(1, '55555551', 'john.smith@example.com'),
(2, '55555552', 'jane.doe@example.com'),
(3, '55555553', 'bob.johnson@example.com'),
(4, '55555554', 'samantha.williams@example.com'),
(5, '55555555', 'michael.brown@example.com'),
(6, '55555556', 'emily.davis@example.com'),
(7, '55555557', 'matthew.miller@example.com'),
(8, '55555558', 'lauren.garcia@example.com'),
(9, '55555559', 'jacob.martinez@example.com'),
(10, '55555560', 'isabella.thompson@example.com'),
(11, '55555561', 'ethan.white@example.com'),
(12, '55555562', 'madison.harris@example.com'),
(13, '55555563', 'aiden.clark@example.com'),
(14, '55555564', 'abigail.lewis@example.com'),
(15, '55555565', 'natalie.rodriguez@example.com'),
(16, '55555566', 'sofia.james@example.com'),
(17, '55555567', 'mia.wilson@example.com'),
(18, '55555568', 'isabelle.moore@example.com'),
(19, '55555569', 'avery.jackson@example.com'),
(20, '55555570', 'ella.martin@example.com');

