CREATE DATABASE IF NOT EXISTS college;
USE college;
CREATE TABLE IF NOT EXISTS Student(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY(id)
);
INSERT INTO Student (name, age)
    VALUES
    ('John', 20);
INSERT INTO Student (name, age)
    VALUES
    ('Rony', 42),
    ('Deby', 39),
    ('Emi', 17),
    ('Sofi', 10);
UPDATE Student SET age = 21 WHERE id = 1;
INSERT INTO Student (name, age)
    VALUES ('John', 21),
    ('Mary', 22);
DELETE FROM Student WHERE id = 6;
ALTER TABLE Student ADD country CHAR(50);
UPDATE Student SET country='Uruguay' WHERE country IS NULL;
ALTER TABLE Student MODIFY country CHAR(50) NOT NULL;
DELETE FROM Student WHERE id > 8;
SELECT * FROM Student;
