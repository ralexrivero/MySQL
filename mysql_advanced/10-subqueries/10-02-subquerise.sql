SELECT * FROM Bookings WHERE BookingSlot > (SELECT MAX(BookingSlot) FROM Bookings WHERE GuestFirstName = 'Vanessa' AND GuestLastName = 'McCarthy');
SELECT * FROM MenuItems WHERE Price > (SELECT MAX(Price) FROM MenuItems WHERE Type IN ('Starters', 'Desserts'));
SELECT * FROM MenuItems WHERE Price = (SELECT Price FROM Menus, MenuItems WHERE Menus.ItemID = MenuItems.ItemID AND MenuItems.Type = 'Starters' AND Cuisine = 'Italian');
SELECT * FROM MenuItems
WHERE NOT EXISTS (SELECT * FROM TableOrders, Menus WHERE TableOrders.MenuID = Menus.MenuID AND Menus.ItemID = MenuItems.ItemID);
SELECT * FROM MenuItems WHERE NOT EXISTS (SELECT * FROM TableOrders, Menus WHERE TableOrders.MenuID = Menus.MenuID AND Menus.ItemID = MenuItems.ItemID);
SELECT * FROM MenuItems WHERE Price > ALL (SELECT Price FROM MenuItems WHERE Type IN ('Starters', 'Desserts'));
SELECT * FROM MenuItems WHERE EXISTS (SELECT * FROM TableOrders, Menus WHERE TableOrders.MenuID = Menus.MenuID AND Menus.ItemID = MenuItems.ItemID);