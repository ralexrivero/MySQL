SELECT Department, SUM(OrderTotal) FROM Orders GROUP BY Department HAVING SUM(OrderTotal) > 12500 ORDER BY SUM(OrderTotal) DESC;
