CREATE DATABASE IF NOT EXISTS company;
USE company;
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    allowance DECIMAL(10,2) NOT NULL DEFAULT 1000
);

INSERT INTO employees(employee_name, salary, allowance) VALUES ('John', 25000, 1000), ('Rony', 45000, 10000), ('Aly', 33000, 3500), ('Clark', 35000, 8500);
