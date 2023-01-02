# SQL Lab: college data

The following lab is intended to be used with the mysql syntax

## Create a database

- Create a database called `college` to store the data of the students of a college.
- Create a table called `Student` to store the data of the students.
- The table should have the following fields:
  - `id` - integer
  - `name` - string
  - `age` - integer
  - Insert the data of the students into the table.

### Solution to create a database


```sql
mysql> DESCRIBE students;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| id    | int          | YES  |     | NULL    |       |
| name  | varchar(100) | YES  |     | NULL    |       |
| age   | int          | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
3 rows in set (0.01 sec)
```

```sql
mysql> SELECT * FROM students;
+------+------+------+
| id   | name | age  |
+------+------+------+
|    1 | John |   30 |
|    2 | Rony |   42 |
+------+------+------+
2 rows in set (0.00 sec)
```

### code to create a database

- [00-college_lab.sql](./00-college_lab.sql)

## Modify the table structure

To be more accurete, the `id` field should be the `PRIMARY KEY` of the table and also be `UNIQUE`, `AUTOINCREMENT` and `NOT NULL`.
Instead of having an `age` field, we can have a `birthdate` field.
The `name` field must be substituted with `first_name` and `last_name` fields.
Also add more fields to the table:

- `gender` - string
- `address` - string
- `phone` - string
- `email` - string
- `country` - string
- `city` - string

- No one of the fields should be `NULL`

### Solution to modify the table structure

```sql
mysql> DESCRIBE students;
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| id        | int          | NO   | PRI | NULL    | auto_increment |
| firstName | varchar(50)  | NO   |     | NULL    |                |
| lastName  | varchar(50)  | NO   |     | NULL    |                |
| birthday  | date         | NO   |     | NULL    |                |
| gender    | varchar(12)  | NO   |     | NULL    |                |
| address   | varchar(255) | NO   |     | NULL    |                |
| phone     | varchar(50)  | NO   |     | NULL    |                |
| country   | varchar(50)  | NO   |     | NULL    |                |
| city      | varchar(50)  | NO   |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+
9 rows in set (0.01 sec)
```

### code to modify the table structure

If you struggle with the solution, you can `TRUNCATE` the table and start over.

- [01-modify_table.sql](./01-modify_table.sql)