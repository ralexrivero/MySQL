SELECT c.name AS customer_name, c.address AS customer_address, o.product, o.quantity
FROM customers AS c
JOIN orders AS o ON c.id = o.customer_id;
