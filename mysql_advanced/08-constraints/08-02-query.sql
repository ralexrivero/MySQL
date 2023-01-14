SELECT c.fullName, i.itemName, o.quantity, o.cost FROM Orders AS o LEFT JOIN Items AS i ON o.itemID=i.itemID LEFT JOIN Clients AS c ON o.clientID=c.clientID;
