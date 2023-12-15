INSERT INTO [User] (UserID, Name, Email, Password, ContactNumber, Address)
VALUES
(1, 'Alice Johnson', 'alice@example.com', 'pass123', '1234567890', '123 Maple Street'),
(2, 'Bob Smith', 'bob@example.com', 'pass456', '2345678901', '234 Oak Street'),
(3, 'Charlie Brown', 'charlie@example.com', 'pass789', '3456789012', '345 Pine Street'),
(4, 'Diana Prince', 'diana@example.com', 'pass012', '4567890123', '456 Elm Street'),
(5, 'Ethan Hunt', 'ethan@example.com', 'pass345', '5678901234', '567 Cedar Street'),
(6, 'Fiona Gallagher', 'fiona@example.com', 'pass678', '6789012345', '678 Birch Street'),
(7, 'George Wilson', 'george@example.com', 'pass901', '7890123456', '789 Willow Street'),
(8, 'Hannah Abbott', 'hannah@example.com', 'pass234', '8901234567', '890 Ash Street'),
(9, 'Ian Malcolm', 'ian@example.com', 'pass567', '9012345678', '901 Chestnut Street'),
(10, 'Jane Doe', 'jane@example.com', 'pass890', '0123456789', '1010 Oak Avenue');


INSERT INTO Courier (CourierID, SenderName, SenderAddress, ReceiverName, ReceiverAddress, Weight, Status, TrackingNumber, DeliveryDate)
VALUES
(1, 'Alice Johnson', '123 Maple Street', 'Bob Smith', '234 Oak Street', 2.5, 'In Transit', 'TN001', '2023-12-10'),
(2, 'Bob Smith', '234 Oak Street', 'Charlie Brown', '345 Pine Street', 3.0, 'Delivered', 'TN002', '2023-12-09'),
(3, 'Charlie Brown', '345 Pine Street', 'Diana Prince', '456 Elm Street', 1.5, 'Pending', 'TN003', '2023-12-11'),
(4, 'Diana Prince', '456 Elm Street', 'Ethan Hunt', '567 Cedar Street', 4.2, 'In Transit', 'TN004', '2023-12-12'),
(5, 'Ethan Hunt', '567 Cedar Street', 'Fiona Gallagher', '678 Birch Street', 2.8, 'Delivered', 'TN005', '2023-12-13'),
(6, 'Fiona Gallagher', '678 Birch Street', 'George Wilson', '789 Willow Street', 3.1, 'Pending', 'TN006', '2023-12-14'),
(7, 'George Wilson', '789 Willow Street', 'Hannah Abbott', '890 Ash Street', 4.0, 'In Transit', 'TN007', '2023-12-15'),
(8, 'Hannah Abbott', '890 Ash Street', 'Ian Malcolm', '901 Chestnut Street', 1.9, 'Delivered', 'TN008', '2023-12-16'),
(9, 'Ian Malcolm', '901 Chestnut Street', 'Jane Doe', '1010 Oak Avenue', 2.3, 'Pending', 'TN009', '2023-12-17'),
(10, 'Jane Doe', '1010 Oak Avenue', 'Alice Johnson', '123 Maple Street', 1.5, 'In Transit', 'TN010', '2023-12-18');

INSERT INTO CourierServices (ServiceID, ServiceName, Cost)
VALUES
(1, 'Standard Delivery', 5.00),
(2, 'Express Delivery', 10.00),
(3, 'Overnight Delivery', 15.00),
(4, 'Same Day Delivery', 20.00),
(5, 'International Standard', 25.00),
(6, 'International Express', 30.00),
(7, 'Economy Delivery', 3.50),
(8, 'Weekend Delivery', 12.00),
(9, 'Holiday Delivery', 18.00),
(10, 'Custom Delivery', 50.00);


INSERT INTO Employee (EmployeeID, Name, Email, ContactNumber, Role, Salary)
VALUES
(1, 'Adam Scott', 'adamscott@example.com', '1234567890', 'Manager', 70000.00),
(2, 'Betty White', 'bettywhite@example.com', '2345678901', 'Clerk', 40000.00),
(3, 'Carlos Diaz', 'carlosdiaz@example.com', '3456789012', 'Courier', 30000.00),
(4, 'Diana Ross', 'dianaross@example.com', '4567890123', 'Supervisor', 50000.00),
(5, 'Evan Peters', 'evanpeters@example.com', '5678901234', 'Courier', 30000.00),
(6, 'Fiona Glenanne', 'fionaglen@example.com', '6789012345', 'Accountant', 60000.00),
(7, 'George Bluth', 'georgebluth@example.com', '7890123456', 'HR Manager', 80000.00),
(8, 'Helen Parr', 'helenparr@example.com', '8901234567', 'Marketing Manager', 75000.00),
(9, 'Ian Holm', 'ianholm@example.com', '9012345678', 'IT Support', 45000.00),
(10, 'Jane Foster', 'janefoster@example.com', '0123456789', 'Courier', 30000.00);

INSERT INTO Location (LocationID, LocationName, Address)
VALUES
(1, 'Downtown Branch', '100 Main Street'),
(2, 'Uptown Branch', '200 High Street'),
(3, 'Eastside Branch', '300 East Road'),
(4, 'Westside Branch', '400 West Avenue'),
(5, 'Northside Branch', '500 North Lane'),
(6, 'Southside Branch', '600 South Boulevard'),
(7, 'Central Branch', '700 Center Plaza'),
(8, 'Suburban Branch', '800 Suburb Street'),
(9, 'Rural Branch', '900 Country Road'),
(10, 'Seaside Branch', '1000 Shoreline Drive');


INSERT INTO Payment (PaymentID, CourierID, LocationID, Amount, PaymentDate)
VALUES
(1, 1, 1, 20.00, '2023-12-01'),
(2, 2, 2, 25.00, '2023-12-02'),
(3, 3, 3, 15.00, '2023-12-03'),
(4, 4, 4, 30.00, '2023-12-04'),
(5, 5, 5, 18.00, '2023-12-05'),
(6, 6, 6, 22.00, '2023-12-06'),
(7, 7, 7, 12.00, '2023-12-07'),
(8, 8, 8, 28.00, '2023-12-08'),
(9, 9, 9, 35.00, '2023-12-09'),
(10, 10, 10, 20.00, '2023-12-10');
