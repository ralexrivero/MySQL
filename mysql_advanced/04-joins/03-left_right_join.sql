SELECT c.FullName AS 'Client', o.ProductID AS 'Product', o.Quantity AS 'Qty', o.Cost AS 'Cost' FROM Clients AS c LEFT JOIN Orders AS o ON c.ClientID = o.ClientID;

SELECT c.FullName AS 'Client', o.ProductID AS 'Product', o.Quantity AS 'Qty', o.Cost AS 'Cost' FROM Clients AS c RIGHT JOIN Orders AS o ON c.ClientID = o.ClientID;
