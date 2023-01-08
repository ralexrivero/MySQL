SELECT c.FullName AS Customer, c.PhoneNumber AS Phone, b.BookingDate AS Date, b.TableNumber AS 'Table', b.NumberOfGuests AS Guests FROM Customers AS c INNER JOIN Bookings AS b ON c.CustomerID = b.CustomerID ORDER BY b.BookingDate ASC;

SELECT c.CustomerID, b.BookingID FROM Customers AS c LEFT JOIN Bookings AS b ON c.CustomerID = b.CustomerID ORDER BY c.CustomerID ASC;
