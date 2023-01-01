# SQL Lab: college data

## Asignment

- Create a database called `college` to store the data of the students of a college.
- Create a table called `Student` to store the data of the students.
- The table should have the following fields:
  - `id` - integer
  - `name` - string
  - `age` - integer
  - Insert the data of the students into the table.

### Solution

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

### code

- [00-college_lab.sql](./00-college_lab.sql)
