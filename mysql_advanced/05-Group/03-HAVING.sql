SELECT Department, SUM(OrderTotal) FROM Orders GROUP BY Department HAVING SUM(OrderTotal) > 12500 ORDER BY SUM(OrderTotal) DESC;
SELECT Department, SUM(OrderQty) AS Qty, SUM(OrderTotal) AS Total FROM Orders GROUP BY Department HAVING Total > 12500 ORDER BY Total;
SELECT OrderDate, COUNT(OrderID) FROM Orders GROUP BY OrderDate;
SELECT Department, SUM(OrderQty) AS Qty FROM Orders GROUP BY Department;
