select CustomerID, FirstName, LastName, City, State, Country from Customer;
select CustomerID, FirstName, LastName, City, State, Country from Customer ORDER BY FirstName;
select CustomerID, FirstName, LastName, City, State, Country from Customer WHERE Country = "Brazil" ORDER BY FirstName;
SELECT FirstName, Country FROM Customer WHERE Country = "Canada" ORDER BY FirstName;
