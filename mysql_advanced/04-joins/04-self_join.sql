SELECT e1.FullName AS 'Manager', e2.FullName AS 'Employee' FROM Employees as e1 INNER JOIN Employees as e2 ON e1.EmployeeID = e2.LineManagerID ORDER BY e1.FullName ASC;
