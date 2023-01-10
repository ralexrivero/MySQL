SELECT Departament, COUNT(OrderID) AS 'Lines', SUM(OrderTotal) AS U$S FROM Orders GROUP BY Departament ORDER BY U$S DESC;

SELECT Departament, COUNT(OrderID) AS 'Lines', SUM(OrderQty) AS 'Total Qty', ROUND(AVG(OrderQty)) 'Avg Qty', MIN(OrderTotal) AS 'Min U$S', MAX(OrderTotal) AS 'Max U$S', ROUND(AVG(OrderTotal)) AS 'Avg U$S', ROUND(AVG(OrderTotal)/COUNT(OrderID)) AS 'Avg Ticket', SUM(OrderTotal) AS U$S FROM Orders GROUP BY Departament ORDER BY U$S DESC;
