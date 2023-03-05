# MySQL



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
- `<>` not equal or `!=`
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

## ORDER BY CLAUSE

The `ORDER BY` clause is used to sort the result-set in ascending or descending order.

```sql
SELECT column_name(s)
FROM table_name
ORDER BY column_name(s) ASC|DESC;
```

- `ASC` ascending order
- `DESC` descending order

```sql
mysql> SELECT * FROM students ORDER BY age DESC;
+----+----------+-------+
| id | name | age |
+----+----------+-------+
| 3 | Sally | 22 |
| 2 | Sarah | 21 |
| 1 | Sam   | 20 |
+----+----------+-------+
3 rows in set (0.00 sec)
```

### TYPES OF ORDERING

Order by one column: `ORDER BY column_name ASC|DESC;`
Order by multiple columns: `ORDER BY column_name1 ASC|DESC, column_name2 ASC|DESC;`

```sql
mysql> SELECT * FROM students ORDER BY age DESC, name ASC;
+----+----------+-------+
| id | name     | age   |
+----+----------+-------+
| 3  | Sally    | 22    |
| 2  | Sarah    | 21    |
| 1  | Sam      | 20    |
+----+----------+-------+
3 rows in set (0.00 sec)
```

### WHERE CLAUSE

The where clause is used tu filter and extract record that satisfy a given condition.

```sql
SELECT column_name
WHERE condition;
```

#### BETWEEN

```sql
mysql> SELECT * FROM students WHERE birthday BETWEEN '1985-01-01' AND '1998-12-31';
+----+-----------+----------+------------+--------+------------------+---------------+-----------+--------------+
| id | firstName | lastName | birthday   | gender | address          | phone         | country   | city         |
+----+-----------+----------+------------+--------+------------------+---------------+-----------+--------------+
|  2 | Jane      | Dylan    | 1998-04-30 | Female | 234 First St     | 555-444-5555  | Candada   | Toronto      |
|  5 | Maria     | Gonzalez | 1985-05-12 | Female | 25 de Mayo 1456  | 551-555-42337 | Argentina | Buenos Aires |
|  6 | Sofia     | Perez    | 1990-09-15 | Female | Puerto Mont 2456 | 588-975-6431  | Chile     | Santiago     |
+----+-----------+----------+------------+--------+------------------+---------------+-----------+--------------+
3 rows in set (0.01 sec)
```

#### LIKE

```sql
mysql> SELECT * FROM students WHERE country LIKE 'U%';
+----+-----------+----------+------------+--------+------------------------+---------------+---------+------------+
| id | firstName | lastName | birthday   | gender | address                | phone         | country | city       |
+----+-----------+----------+------------+--------+------------------------+---------------+---------+------------+
|  1 | John      | Doe      | 2000-10-10 | Male   | 123 Main St            | 555-555-5555  | USA     | New York   |
|  3 | Bob       | Smith    | 1999-12-25 | Male   | 456 Secondary St       | 555-333-12345 | USA     | New York   |
|  4 | Ronald    | Rivero   | 1980-09-24 | Male   | Ellauri 365 bis apto 3 | 59893776930   | Uruguay | Montevideo |
+----+-----------+----------+------------+--------+------------------------+---------------+---------+------------+
3 rows in set (0.00 sec)

```

#### IN

```sql
mysql> SELECT * FROM students WHERE country IN ('USA', 'Canada');
+----+-----------+----------+------------+--------+------------------+---------------+---------+----------+
| id | firstName | lastName | birthday   | gender | address          | phone         | country | city     |
+----+-----------+----------+------------+--------+------------------+---------------+---------+----------+
|  1 | John      | Doe      | 2000-10-10 | Male   | 123 Main St      | 555-555-5555  | USA     | New York |
|  2 | Jane      | Dylan    | 1998-04-30 | Female | 234 First St     | 555-444-5555  | Canada  | Toronto  |
|  3 | Bob       | Smith    | 1999-12-25 | Male   | 456 Secondary St | 555-333-12345 | USA     | New York |
+----+-----------+----------+------------+--------+------------------+---------------+---------+----------+
3 rows in set (0.00 sec)
```

## LOGICAL OPERATORS

- `ALL` Used to compare a single value to all the values in another value set.
- `AND` Allows for the existence of multiple conditions in an SQL statement's `WHERE` clause.
- `ANY` Used to compare a value to any applicable value in the list as per the condition.
- `BETWEEN` Used to search for values that are within a set of values, given the minimum value and the maximum value.
- `EXISTS` Used to search for the presence of a row in a specified table that meets a certain criterion.
- `IN` Used to compare a value to a list of literal values that have been specified.
- `LIKE` Used to compare a value to similar values using wildcard operators.
- `NOT` Reverses the meaning of the logical operator with which it is used. For example: `NOT EXISTS`, `NOT BETWEEN`, `NOT IN`, etc. This is a negate operator.
- `OR` Used to combine multiple conditions in an SQL statement's `WHERE` clause.
- `IS NULL` Used to compare a value with a `NULL` value.
- `UNIQUE` Searches every row of a specified table for uniqueness (no duplicates)

## DISTINCT

- `DISTINCT` is used to return only distinct (different) values.

```sql
SELECT DISTINCT column_name(s)
FROM table_name;
```

```sql
mysql> SELECT DISTINCT Country, City FROM Customer;
+---------+-----------------------+
| Country | City                  |
+---------+-----------------------+
| Brazil  | São José dos Campos |
| Brazil  | São Paulo            |
| Brazil  | Rio de Janeiro        |
| Canada  | Edmonton              |
| Canada  | Vancouver             |
+---------+-----------------------+
5 rows in set (0.00 sec)

mysql> SELECT DISTINCT Country FROM Customer;
+---------+
| Country |
+---------+
| Brazil  |
| Canada  |
+---------+
2 rows in set (0.00 sec)

mysql> SELECT DISTINCT City FROM Customer;
+-----------------------+
| City                  |
+-----------------------+
| São José dos Campos |
| São Paulo            |
| Rio de Janeiro        |
| Edmonton              |
| Vancouver             |
+-----------------------+
5 rows in set (0.00 sec)
```

### DISTINCT WITH AGGREGATE FUNCTIONS

- `DISTINCT` can be used with aggregate functions like `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`, etc.

```sql
SELECT DISTINCT COUNT(column_name)
FROM table_name;
```

## SCHEMA

The schema in a database is the structure that describes the layout of the database. It defines how the data is organized and how the relations among them are associated. The schema is independent of the actual data stored in the database.
