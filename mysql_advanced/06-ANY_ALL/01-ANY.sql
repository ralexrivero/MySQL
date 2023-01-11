-- identify all employees with the Order Status status 'Completed'
SELECT EmployeeId, EmployeeName 
FROM employees 
WHERE EmployeeID = ANY (SELECT EmployeeID FROM employee_orders WHERE Status='Completed');
-- identify the IDs of employees who earned a handling cost of "more than 20% of the order value" from all orders they have handled
SELECT EmployeeID,HandlingCost 
FROM employee_orders 
WHERE HandlingCost > ALL(SELECT ROUND(OrderTotal/100 * 20) FROM orders);
-- employee_orders table that have a handling cost more than ALL the 20% values returned from the subquery
SELECT EmployeeID,HandlingCost  
FROM employee_orders  
WHERE HandlingCost > ALL(SELECT ROUND(OrderTotal/100 * 20) FROM orders) GROUP BY EmployeeID,HandlingCost;
-- filter the grouped data in the subquery that you wrote in task 3 to filter the 20% OrderTotal values to only retrieve values that are more than $100
SELECT EmployeeID,HandlingCost 
FROM employee_orders 
WHERE HandlingCost > ALL(SELECT ROUND(OrderTotal/100 * 20) AS twentyPercent FROM orders  GROUP BY OrderTotal
HAVING twentyPercent > 100)  GROUP BY EmployeeID,HandlingCost;
