# MySQL

## Run container

- `docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:tag`
- `docker excec -it some-mysql bash`
- `mysql -u root -p my-secret-pw`

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
