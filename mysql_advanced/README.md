# MySQL Advanced

## Filtering data using AND, OR and NOT logial operators

Combine conditions using logical operators AND, OR and NOT.

```sql
SELECT *
FROM table
WHERE condition1 AND condition2;
```

- `AND` operator returns rows that match both conditions.
- `OR` operator returns rows that match either condition.
- `NOT` operator returns rows that do not match the condition.

- [create database](./lucky_lab/00-create_db.sql) - to test the following queries

```sql
mysql> SELECT * FROM customer_purchases WHERE Location = 'Gila County' AND Purchases > 2000;
+------------+-----------------+-------------+-----------+
| CustomerID | CustomerName    | Location    | Purchases |
+------------+-----------------+-------------+-----------+
|          4 | Benjamin Clauss | Gila County |      2500 |
|          7 | Julie Marr      | Gila County |      2250 |
+------------+-----------------+-------------+-----------+
2 rows in set (0.00 sec)
```

```sql
mysql> SELECT * FROM customer_purchases WHERE Location = 'Gila County' OR Location = 'Santa Cruz County';
+------------+-----------------+-------------------+-----------+
| CustomerID | CustomerName    | Location          | Purchases |
+------------+-----------------+-------------------+-----------+
|          3 | Laurina Delgado | Santa Cruz County |      1000 |
|          4 | Benjamin Clauss | Gila County       |      2500 |
|          7 | Julie Marr      | Gila County       |      2250 |
+------------+-----------------+-------------------+-----------+
3 rows in set (0.00 sec)
```

```sql
mysql> SELECT * FROM customer_purchases WHERE NOT Purchases > 1000;
+------------+-----------------+-------------------+-----------+
| CustomerID | CustomerName    | Location          | Purchases |
+------------+-----------------+-------------------+-----------+
|          3 | Laurina Delgado | Santa Cruz County |      1000 |
|          6 | Greta Galkina   | Mohave County     |       500 |
+------------+-----------------+-------------------+-----------+
2 rows in set (0.00 sec)
```

### Filtering data using, IN, BETWEEN and LIKE logical operators

- `IN` operator allows you to specify multiple values in a condition.
- `BETWEEN` operator selects values within a given range.
- `LIKE` operator allows you to use wildcard characters to search for a pattern.

```sql
SELECT * FROM customer_purchases WHERE Location IN ('Gila County');
+------------+-----------------+-------------+-----------+
| CustomerID | CustomerName    | Location    | Purchases |
+------------+-----------------+-------------+-----------+
|          4 | Benjamin Clauss | Gila County |      2500 |
|          7 | Julie Marr      | Gila County |      2250 |
+------------+-----------------+-------------+-----------+
```

```sql
mysql> SELECT * FROM customer_purchases WHERE Purchases BETWEEN 1000 AND 2000 ORDER BY Purchases ASC;
+------------+-----------------+-------------------+-----------+
| CustomerID | CustomerName    | Location          | Purchases |
+------------+-----------------+-------------------+-----------+
|          3 | Laurina Delgado | Santa Cruz County |      1000 |
|          1 | Takahi Ito      | Graham County     |      1500 |
|          2 | Jane Murphy     | Pinal County      |      1750 |
|          5 | Altay Ayhan     | Cochise County    |      2000 |
+------------+-----------------+-------------------+-----------+
4 rows in set (0.00 sec)

```

- wildcards
  - `%` - zero or more characters
  - `_` - single character

```sql
mysql> SELECT * FROM customer_purchases WHERE Location LIKE 'gi%';
+------------+-----------------+-------------+-----------+
| CustomerID | CustomerName    | Location    | Purchases |
+------------+-----------------+-------------+-----------+
|          4 | Benjamin Clauss | Gila County |      2500 |
|          7 | Julie Marr      | Gila County |      2250 |
+------------+-----------------+-------------+-----------+
2 rows in set (0.00 sec)

```

```sql
mysql> SELECT * FROM customer_purchases WHERE Location LIKE '_a%';
+------------+-----------------+-------------------+-----------+
| CustomerID | CustomerName    | Location          | Purchases |
+------------+-----------------+-------------------+-----------+
|          3 | Laurina Delgado | Santa Cruz County |      1000 |
+------------+-----------------+-------------------+-----------+
1 row in set (0.00 sec)
```

## Aliases

- Aliases provide temprary names within the database for ease-of-use

### Rename tables and columns

```sql
SELECT EmployeeID AS ID, Department, ContactNo AS Num, Email, AnnualSalary AS Salary FROM employees;
+----+------------------+-----------+-----------------------------+--------+
| ID | Department       | Num       | Email                       | Salary |
+----+------------------+-----------+-----------------------------+--------+
|  1 | Recruitment      | 351478025 | Seamus.h@luckyshrub.com     |  50000 |
|  2 | Legal            | 351475058 | Thomas.e@ luckyshrub.com    |  75000 |
|  3 | Marketing        | 351930582 | Simon.t@ luckyshrub.com     |  40000 |
|  4 | Finance          | 351258569 | Francesca.s@ luckyshrub.com |  45000 |
|  5 | Customer Service | 351083098 | Emily.s@ luckyshrub.com     |  35000 |
|  6 | Human Resources  | 351022508 | Maria.c@ luckyshrub.com     |  55000 |
|  7 | Marketing        | 351478458 | Rick.G@luckyshrub.com       |  50000 |
+----+------------------+-----------+-----------------------------+--------+
7 rows in set (0.00 sec)
```

### Rename functions

```sql
mysql> SELECT CONCAT (EmployeeID, '-', EmployeeName) AS ID, AnnualSalary AS Salary FROM employees ORDER BY AnnualSalary DESC;
+--------------------+--------+
| ID                 | Salary |
+--------------------+--------+
| 2-Thomas Eriksson  |  75000 |
| 6-Maria Carter     |  55000 |
| 1-Seamus Hogan     |  50000 |
| 7-Rick Griffin     |  50000 |
| 4-Francesca Soffia |  45000 |
| 3-Simon Tolo       |  40000 |
| 5-Emily Sierra     |  35000 |
+--------------------+--------+
7 rows in set (0.00 sec)
```

```sql
mysql> SELECT AnnualSalary / 12 AS 'Salary (M)' FROM employees;
+------------+
| Salary (M) |
+------------+
|  4166.6667 |
|  6250.0000 |
|  3333.3333 |
|  3750.0000 |
|  2916.6667 |
|  4583.3333 |
|  4166.6667 |
+------------+
7 rows in set (0.00 sec)
```

### Multiple tables


