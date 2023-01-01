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

```sql
