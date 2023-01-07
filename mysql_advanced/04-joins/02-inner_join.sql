SELECT Clients.FullName FROM Clients INNER JOIN Orders ON Clients.ClientID = Orders.ClientID;

SELECT DISTINCT FullName AS 'Client Name' FROM Clients INNER JOIN Orders ON Clients.ClientID = Orders.ClientID;

SELECT Clients.ClientID AS ID, Clients.FullName AS 'Client', Clients.ContactNumber AS 'Phone', Clients.Address, Orders.ProductID AS 'Product', Orders.Quantity AS 'Quantity', Orders.Cost AS 'Cost' FROM Clients INNER JOIN Orders ON Clients.ClientID = Orders.ClientID;