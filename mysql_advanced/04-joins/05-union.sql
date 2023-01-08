SELECT * FROM Clients UNION SELECT * FROM LegacyClients;
SELECT FullName FROM Clients UNION SELECT FullName FROM LegacyClients;
SELECT ClientID FROM Clients UNION SELECT ClientID FROM LegacyClients;
SELECT ClientID FROM Clients UNION ALL SELECT ClientID FROM LegacyClients;
