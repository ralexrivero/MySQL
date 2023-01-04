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
