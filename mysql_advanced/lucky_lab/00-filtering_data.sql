SELECT * FROM Orders WHERE Cost <= 250 ORDER BY Cost DESC;
SELECT * FROM Orders WHERE Cost BETWEEN 50 AND 750 ORDER BY Cost ASC;
SELECT * FROM Orders WHERE ClientID='Cl3' AND Cost > 100 ORDER BY Cost DESC;
SELECT * FROM Orders WHERE ProductID IN ('p1','p2') AND Quantity > 2 ORDER BY Cost DESC;
SELECT * FROM Orders WHERE productID = 'P3' AND (ClientID = 'Cl2' OR ClientID ='Cl3');
