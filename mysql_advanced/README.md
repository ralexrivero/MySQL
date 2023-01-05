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
