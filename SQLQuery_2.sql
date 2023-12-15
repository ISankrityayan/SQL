-- Inserting Sample Records into Products
INSERT INTO Products (ProductID, ProductName, Description, Price)
VALUES
  (1,'Laptop', 'High-performance laptop', 1200.00),
  (2,'Smartphone', 'Latest smartphone model', 800.00),
  (3,'Tablet', 'Large screen tablet', 500.00),
  (4,'Camera', 'Professional DSLR camera', 1500.00),
  (5,'Smartwatch', 'Fitness tracking smartwatch', 200.00),
  (6,'Headphones', 'Wireless noise-canceling headphones', 150.00),
  (7,'Printer', 'Color laser printer', 300.00),
  (8,'External Hard Drive', '1TB portable external hard drive', 100.00),
  (9,'Bluetooth Speaker', 'Waterproof Bluetooth speaker', 50.00),
  (10,'Gaming Console', 'Latest gaming console', 400.00);


  -- Inserting Sample Records into Inventory with specified InventoryID values
INSERT INTO Inventory (InventoryID, ProductID, QuantityInStock, LastStockUpdate)
VALUES
  (1, 1, 10, '2023-01-01'),
  (2, 2, 20, '2023-01-02'),
  (3, 3, 15, '2023-01-03'),
  (4, 4, 5, '2023-01-04'),
  (5, 5, 30, '2023-01-05'),
  (6, 6, 10, '2023-01-06'),
  (7, 7, 8, '2023-01-07'),
  (8, 8, 12, '2023-01-08'),
  (9, 9, 25, '2023-01-09'),
  (10, 10, 7, '2023-01-10');


  INSERT INTO Customers (CustomerID,FirstName, LastName, Email, Phone, Address)
VALUES
  (1,'Ishita', 'Sankrityayan', 'ishita.@gmail.com', '123-456-7890', '123 Main St'),
  (2,'Sakshi', 'Singh', 'sakshi@gmail.com', '987-654-3210', '456 Oak Ave'),
  (3,'Abhishek', 'Mishra', 'abhishek@gmail.com', '987-654-3210', '456 Oak Ave'),
  (4,'Jyotsna', 'Singh', 'jyotsna@gmail.com', '987-654-323', '456 Oak Ave'),
  (5,'Aman', 'Verma', 'aman@gmail.com', '987-654-987', 'abc Ave'),
  (6,'Sonali', 'Singh', 'sonali@gmail.com', '987-654-123', '346 road'),
  (7,'Rishika', 'Agarwal', 'rishika@gmail.com', '987-654-678', '456 Oak Ave'),
  (8,'Noor', 'Fatima', 'noor@gmail.com', '987-657-3210', '456 Oak Ave'),
  (9,'Navya', 'Puri', 'navya@gmail.com', '987-908-4210', '456 Oak Ave'),
  (10,'Yashi', 'Singh', 'yashi@gmail.com', '987-456-543', '456 Oak Ave')

  --Inserting into Orders Table
  INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
   
    (2, 2, '2023-02-20', 200.50),
    (3, 3, '2023-03-10', 75.20),
    (4, 4, '2023-04-05', 300.00),
    (5, 5, '2023-05-12', 120.90),
    (6, 6, '2023-06-18', 180.25),
    (7, 7, '2023-07-22', 250.80),
    (8, 8, '2023-08-08', 90.60),
    (9, 9, '2023-09-14', 160.40),
    (10, 10, '2023-10-30', 220.75);
