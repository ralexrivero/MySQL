SELECT Type, ROUND(AVG(Price), 1) FROM MenuItems GROUP BY Type;
INSERT INTO LowCostMenuItems (itemID, Name, Price) SELECT ItemID, Name, Price FROM MenuItems WHERE Price= ANY (SELECT ROUND(AVG(Price),0) FROM MenuItems
GROUP BY Type);
DELETE FROM LowCostMenuItems WHERE Price > ALL(SELECT MIN(Price) AS p FROM MenuItems GROUP BY Type HAVING p BETWEEN 5 AND 10);
