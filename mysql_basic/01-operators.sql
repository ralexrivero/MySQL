SELECT employee_name, salary + allowance FROM employees ORDER BY salary + allowance DESC;
SELECT *, salary + allowance
FROM employees
WHERE salary + allowance > 40000
ORDER BY salary + allowance ASC;

SELECT * FROM employees WHERE salary < 30000;
-- select only even records in id field
SELECT * FROM employees WHERE id % 2 = 0;
-- order by two fields
SELECT * FROM employees ORDER BY allowance ASC, employee_name DESC;