-- 1. Retrieve names and emails of all customers
SELECT FirstName, LastName, Email FROM Customers;



-- 3. Insert a new customer record into the "Customers" table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address)
VALUES (13,'Harsh', 'Pandey', 'harsh@gmail.com', '123-222-897', '789 baker street');

-- 4. Update the prices of all electronic gadgets in the "Products" table by increasing them by 10%


-- 5. Delete a specific order and its associated order details
DECLARE @OrderIDToDelete INT = 1201; -- Replace with the actual OrderID
DELETE FROM OrderDetails WHERE OrderID = @OrderIDToDelete;
DELETE FROM Orders WHERE OrderID = @OrderIDToDelete;

-- 6. Insert a new order into the "Orders" table
INSERT INTO Orders (OrderID,CustomerID, OrderDate, TotalAmount)
VALUES (1,3, '2023-01-03', 1500.00); 

-- 7. Update the contact information of a specific customer
DECLARE @CustomerIDToUpdate INT = 1; 
UPDATE Customers
SET Email = 'sankrityayan@gmail.com', Address = 'Delhi'
WHERE CustomerID = @CustomerIDToUpdate;

-- 8. Recalculate and update the total cost of each order in the "Orders" table


-- 9. Delete all orders and their associated order details for a specific customer
DECLARE @CustomerIDToDelete INT = 2; 
DELETE FROM OrderDetails WHERE OrderID IN (SELECT OrderID FROM Orders WHERE CustomerID = @CustomerIDToDelete);
DELETE FROM Orders WHERE CustomerID = @CustomerIDToDelete;

-- 10. Insert a new electronic gadget product into the "Products" table