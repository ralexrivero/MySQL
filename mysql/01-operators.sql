SELECT employee_name, salary + allowance FROM employees ORDER BY salary + allowance DESC;
SELECT *, salary + allowance
FROM employees
WHERE salary + allowance > 40000
ORDER BY salary + allowance ASC;
