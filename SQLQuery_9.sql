CREATE DATABASE CarRental
CREATE TABLE Vehicle (
    vehicleID INT PRIMARY KEY,
    make VARCHAR(255),
    model VARCHAR(255),
    year INT,
    dailyRate DECIMAL(10, 2),
    status VARCHAR(15) CHECK (status IN ('available', 'notAvailable')),
    passengerCapacity INT,
    engineCapacity DECIMAL(10, 2)
);

CREATE TABLE Customer (
    customerID INT PRIMARY KEY,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    email VARCHAR(255),
    phoneNumber VARCHAR(255)
);

CREATE TABLE Lease (
    leaseID INT PRIMARY KEY,
    vehicleID INT,
    customerID INT,
    startDate DATE,
    endDate DATE,
    type VARCHAR(15) CHECK (type IN ('DailyLease', 'MonthlyLease')),
    FOREIGN KEY (vehicleID) REFERENCES Vehicle(vehicleID),
    FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);



CREATE TABLE Payment (
    paymentID INT PRIMARY KEY,
    leaseID INT,
    paymentDate DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (leaseID) REFERENCES Lease(leaseID)
);

INSERT INTO Vehicle (vehicleID, make, model, year, dailyRate, status, passengerCapacity, engineCapacity)
VALUES 
(1, 'Toyota', 'Corolla', 2020, 50.00, 'available', 5, NULL),
(2, 'Honda', 'Civic', 2019, 45.00, 'available', 5, NULL),
(3, 'Ford', 'Focus', 2018, 40.00, 'notAvailable', 5, NULL),
(4, 'Chevrolet', 'Malibu', 2021, 55.00, 'available', 5, NULL),
(5, 'Nissan', 'Altima', 2017, 35.00, 'notAvailable', 5, NULL),
(6, 'BMW', '320i', 2022, 70.00, 'available', 5, NULL),
(7, 'Audi', 'A4', 2021, 65.00, 'available', 5, NULL),
(8, 'Mercedes', 'C-Class', 2020, 75.00, 'available', 5, NULL),
(9, 'Kia', 'Optima', 2018, 38.00, 'notAvailable', 5, NULL),
(10, 'Hyundai', 'Sonata', 2019, 42.00, 'available', 5, NULL);


INSERT INTO Customer (customerID, firstName, lastName, email, phoneNumber)
VALUES 
(1, 'John', 'Doe', 'johndoe@example.com', '123-456-7890'),
(2, 'Jane', 'Smith', 'janesmith@example.com', '234-567-8901'),
(3, 'Michael', 'Brown', 'michaelbrown@example.com', '345-678-9012'),
(4, 'Sarah', 'Jones', 'sarahjones@example.com', '456-789-0123'),
(5, 'William', 'Davis', 'williamdavis@example.com', '567-890-1234'),
(6, 'Emma', 'Garcia', 'emmagarcia@example.com', '678-901-2345'),
(7, 'James', 'Miller', 'jamesmiller@example.com', '789-012-3456'),
(8, 'Olivia', 'Wilson', 'oliviawilson@example.com', '890-123-4567'),
(9, 'Robert', 'Moore', 'robertmoore@example.com', '901-234-5678'),
(10, 'Emily', 'Taylor', 'emilytaylor@example.com', '012-345-6789');


INSERT INTO Lease (leaseID, vehicleID, customerID, startDate, endDate, type)
VALUES 
(1, 1, 1, '2023-01-01', '2023-01-10', 'DailyLease'),
(2, 2, 2, '2023-02-01', '2023-02-28', 'MonthlyLease'),
(3, 3, 3, '2023-03-01', '2023-03-12', 'DailyLease'),
(4, 4, 4, '2023-04-01', '2023-04-30', 'MonthlyLease'),
(5, 5, 5, '2023-05-01', '2023-05-15', 'DailyLease'),
(6, 1, 6, '2023-06-01', '2023-06-10', 'DailyLease'),
(7, 2, 7, '2023-07-01', '2023-07-30', 'MonthlyLease'),
(8, 3, 8, '2023-08-01', '2023-08-15', 'DailyLease'),
(9, 4, 9, '2023-09-01', '2023-09-10', 'DailyLease'),
(10, 5, 10, '2023-10-01', '2023-10-31', 'MonthlyLease');


INSERT INTO Payment (paymentID, leaseID, paymentDate, amount)
VALUES 
(1, 1, '2023-01-10', 500.00),
(2, 2, '2023-02-28', 1350.00),
(3, 3, '2023-03-12', 600.00),
(4, 4, '2023-04-30', 1400.00),
(5, 5, '2023-05-15', 750.00),
(6, 6, '2023-06-10', 500.00),
(7, 7, '2023-07-30', 1300.00),
(8, 8, '2023-08-15', 450.00),
(9, 9, '2023-09-10', 300.00),
(10, 10, '2023-10-31', 1550.00);

