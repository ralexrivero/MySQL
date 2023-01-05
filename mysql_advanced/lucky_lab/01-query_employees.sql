SELECT * FROM employees WHERE AnnualSalary >= 50000 AND Department = 'Marketing' ORDER BY AnnualSalary DESC;
SELECT * FROM employees WHERE NOT AnnualSalary >= 50000 ORDER BY AnnualSalary;
SELECT * FROM employees WHERE AnnualSalary < 50000 ORDER BY AnnualSalary ASC;
SELECT * FROM employees WHERE Department IN ('Marketing', 'Finance', 'Legal') AND AnnualSalary > 50000 ORDER BY AnnualSalary, Department;
SELECT * FROM employees WHERE AnnualSalary BETWEEN 10000 AND 50000 ORDER BY AnnualSalary;
SELECT * FROM employees WHERE EmployeeName LIKE 'S___%' ORDER BY EmployeeName ASC;
