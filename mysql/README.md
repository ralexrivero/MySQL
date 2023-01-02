# MySQL

## Run container

- `docker run -d -it --rm -v /home/ralex/code:/code --name mysql -e MYSQL_ROOT_PASSWORD=secret mysql:latest`
- `docker exec -it mysql bash`

- access mysql

```bash
mysql -u root -p
```

- execute sql file

```bash
mysql -u root -p < /code/SQL/mysql/01.sql
```

- execute sql file inside mysql

```sql
source /code/SQL/mysql/01.sql;
```

## SQL Subsets

### DDL - Data Definition Language

- `CREATE DATABASE college;`
- `USE college;`
- `CREATE TABLE Student (id INT, name VARCHAR(20), age INT), PRIMARY KEY(id);`
- `SHOW TABLES;`
- `DESCRIBE Student;` - to show the table structure (the fields and their types)

#### CREATE

- `CREATE DATABASE db_name;`

#### DROP

- `DROP DATABAES db_name;`

### DML - Data Manipulation Language

#### insert

- `INSERT INTO Student VALUES ('John', 20);`

- Insert multiple values

```sql
INSERT INTO Student (name, age)
    VALUES
        ('Rony', 42),
        ('Deby', 39),
        ('Emi', 17),
        ('Sofi', 10);
```

#### update

- `UPDATE Student SET age = 21 WHERE id = 1;`

#### delete

- `DELETE FROM Student WHERE id = 1d;`

### DQL - Data Query Language

- `SELECT * FROM Student;`
- `SELECT name, age FROM Student;`

## Data types

### Numeric data types

- INTEGER: This data type is used to store whole numbers. The range of values that can be stored in an INTEGER depends on the specific database implementation, but it is typically a 32-bit signed integer, which allows for a range of values from -2147483648 to 2147483647.

- SMALLINT: This data type is similar to INTEGER, but it is a 16-bit signed integer, which allows for a smaller range of values (-32768 to 32767).

- BIGINT: This data type is also used to store whole numbers, but it is a 64-bit signed integer, which allows for a much larger range of values (-9223372036854775808 to 9223372036854775807).

- DECIMAL: This data type is used to store decimal values with a fixed precision. When you create a DECIMAL column, you specify the total number of digits and the number of digits after the decimal point.

- NUMERIC: This data type is similar to DECIMAL, but it is typically more accurate and has a larger range of values.

- FLOAT: This data type is used to store floating point numbers. The range and precision of a FLOAT depends on the specific database implementation.

- REAL: This data type is similar to FLOAT, but it typically has a smaller range and lower precision.

- DOUBLE PRECISION: This data type is also used to store floating point numbers, and it typically has a larger range and higher precision than FLOAT or REAL.

### String data types

- CHAR: This data type is used to store a fixed-length string (that is, a string with a fixed number of characters). When you create a CHAR column, you specify the maximum number of characters that can be stored in the column. The length of a CHAR value cannot be changed. A fixed size from 0 to 255. Default is 1.

- VARCHAR: (Variable characters) This data type is used to store a variable-length string (that is, a string with a variable number of characters). When you create a VARCHAR column, you specify the maximum number of characters that can be stored in the column. The length of a VARCHAR value can be changed. Can be from 0 to 65535.

### Databases constraints

- NOT NULL: This constraint ensures that a column cannot have a NULL value.
- UNIQUE: This constraint ensures that all values in a column are different.
- PRIMARY KEY: This constraint uniquely identifies each record in a table.
- FOREIGN KEY: This constraint ensures the referential integrity of the data in the table.
- CHECK: This constraint ensures that all values in a column satisfies a specific condition.
- DEFAULT: This constraint specifies a default value for a column. If no data is provided, the database will provide the default value instead.
- INDEX: This is used to create and retrieve data from the database very quickly.

```sql
CREATE TABLE Customer (
    customer_id INT NOT NULL,
    customer_name VARCHAR(255) NOT NULL,
);
```

## CRUD OPERATIONS

Perform Create, Read, Update, and Delete (CRUD) operations on a table.

### CREATE AND READ

#### CREATE TABLE

- `CREATE TABLE customers(customerName VARCHAR(100), phoneNumber(INT));`

#### ALTER

- `ALTER TABLE students ADD(age int, country VARCHAR(50), nationality VARCHAR(255));`
- `ALTER TABLE students DROP COLUMN nationality;`
- `ALTER TABLE students MODIFY COLUMN country VARCHAR(100);`

#### INSERT

- `INSERT INTO students (age, country) VALUES (20, 'USA'), (21, 'USA'), (22, 'USA');`

#### DELETE ALL

- `TRUNCATE TABLE students;`

#### QUERY DATA

##### SELECT

- `SELECT * FROM students;` all information in all columns
- `SELECT name, age FROM students;`

##### INSERT INTO SELECT

- `INSERT INTO students (name, age) SELECT name, age FROM students;`

### UPDATE AND DELETE DATA

#### UPDATE

The `SET` clause specifies the location of the records within the table. The `WHERE` clause specifies the records to be updated.

- `UPDATE students SET age = 21 WHERE age = 20;`

```sql
UPDATE students
SET home_address = '234 Park Avenue, New York, NY 10017'
WHERE id = 3;
```

#### DELETE DATA

- `DELETE FROM students WHERE id = '1';`

```sql
DELETE FROM students
WHERE last_name = 'Smith';
```

- `DELETE FROM students;` delete all data

## SQL OPERATORS

### Arithmetic operators

- `+` addition
- `-` subtraction
- `*` multiplication
- `/` division
- `%` modulus

```sql
mysql> SELECT 5 + 5;
+------+
| 5 +5 |
+------+
|   10 |
+------+
1 row in set (0.00 sec)
```

### Comparison operators

- `=` equal
- `<>` not equal
- `>` greater than
- `<` less than
- `>=` greater than or equal to
- `<=` less than or equal to

```sql
mysql> SELECT 5 > 5;
+--------+
| 5 > 5 |
+--------+
|      0 |
+--------+
1 row in set (0.00 sec)
```

### Logical operators

- `AND` logical AND
- `OR` logical OR
- `NOT` logical NOT

```sql
mysql> SELECT 5 > 5 AND 5 < 5;
+----------------+
| 5 > 5 AND 5 < 5 |
+----------------+
|              0  |
+----------------+
1 row in set (0.00 sec)
```

### LIKE operator

- `LIKE` operator is used in a WHERE clause to search for a specified pattern in a column.
- `%` wildcard represents zero, one, or multiple characters
- `_` wildcard represents a single character

```sql
mysql> SELECT * FROM students WHERE name LIKE 'S%';
+----+----------+-------+
| id | name | age |
+----+----------+-------+
| 1 | Sam   | 20 |
| 2 | Sarah | 21 |
| 3 | Sally | 22 |
+----+----------+-------+
3 rows in set (0.00 sec)
```

### IN operator

- `IN` operator allows you to specify multiple values in a WHERE clause.

```sql
mysql> SELECT * FROM students WHERE name IN ('Sam', 'Sarah');
+----+----------+-------+
| id | name | age |
+----+----------+-------+
| 1 | Sam   | 20 |
| 2 | Sarah | 21 |
+----+----------+-------+
2 rows in set (0.00 sec)
```

### BETWEEN operator

- `BETWEEN` operator selects values within a given range. The values can be numbers, text, or dates.

```sql
mysql> SELECT * FROM students WHERE age BETWEEN 20 AND 22;
+----+----------+-------+
| id | name | age |
+----+----------+-------+
| 1 | Sam   | 20 |
| 2 | Sarah | 21 |
| 3 | Sally | 22 |
+----+----------+-------+
3 rows in set (0.00 sec)
```

- [execute first](./01-before_operators.sql) - to create a db to work with
- [use operators](./01-operators.sql) - to test operators
