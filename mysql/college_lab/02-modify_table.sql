ALTER TABLE students
MODIFY COLUMN firstName VARCHAR(50) NOT NULL,
ADD lastName VARCHAR(50) NOT NULL,
ADD birthday DATE NOT NULL,
ADD gender VARCHAR(12) NOT NULL,
ADD address VARCHAR(255) NOT NULL,
ADD phone VARCHAR(50) NOT NULL,
ADD country VARCHAR(50) NOT NULL,
ADD city VARCHAR(50) NOT NULL;