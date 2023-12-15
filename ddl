INSERT INTO Students (student_id, first_name, last_name, date_of_birth, email, phone_number)
VALUES 
(1, 'Ishita', 'Sankrityayan', '2001-01-15', 'ishita@email.com', '1234567890'),
(2, 'Sakshi', 'Singh', '2000-05-22', '.sakshi@email.com', '2345678901'),
(3, 'Yashi', 'Singh', '1999-03-30', 'yashi@email.com', '3456789012'),
(4, 'Jyotsna', 'Singh', '2002-07-14', 'jyotsna@email.com', '4567890123'),
(5, 'Abhishek', 'Mishra', '2001-11-21', 'abhi@email.com', '5678901234'),
(6, 'Aman', 'Verma', '2000-02-09', 'aman@email.com', '6789012345'),
(7, 'Harsh', 'Pandey', '1999-08-18', 'harsh@email.com', '7890123456'),
(8, 'Sonali', 'Singh', '2002-12-05', 'sonali@email.com', '8901234567'),
(9, 'Noor', 'Fatima', '2001-04-13', 'inoor@email.com', '9012345678'),
(10, 'Rishika', 'Agarwal', '2000-09-29', 'rishikan@email.com', '0123456789');

INSERT INTO Courses (course_id, course_name, course_description, teacher_id)
VALUES 
(101, 'Mathematics 101', 'Introduction to Algebra', 1),
(102, 'English Literature', 'Shakespeare and his Contemporaries', 2),
(103, 'Physics', 'Fundamentals of Mechanics', 3),
(104, 'Chemistry', 'Introduction to Organic Chemistry', 4),
(105, 'Biology', 'Cellular Biology and Genetics', 5),
(106, 'History', 'World History from 1800', 6),
(107, 'Computer Science', 'Introduction to Programming', 7),
(108, 'Art History', 'Renaissance to Modern Art', 8),
(109, 'Economics', 'Principles of Microeconomics', 9),
(110, 'Psychology', 'Introduction to Psychology', 10);

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date)
VALUES 
(1, 1, 101, '2023-01-10'),
(2, 2, 102, '2023-01-10'),
(3, 3, 103, '2023-01-10'),
(4, 4, 104, '2023-01-10'),
(5, 5, 105, '2023-01-10'),
(6, 6, 106, '2023-01-10'),
(7, 7, 107, '2023-01-10'),
(8, 8, 108, '2023-01-10'),
(9, 9, 109, '2023-01-10'),
(10, 10, 110, '2023-01-10');


INSERT INTO Teachers (teacher_id, first_name, last_name, email, phone_number)
VALUES 
(1, 'Jona', 'Adams', 'laura.adams@email.com', '1234567890'),
(2, 'Mark', 'Baker', 'mark.baker@email.com', '2345678901'),
(3, 'Nancy', 'Clark', 'nancy.clark@email.com', '3456789012'),
(4, 'Oscar', 'Dunn', 'oscar.dunn@email.com', '4567890123'),
(5, 'Paula', 'Evans', 'paula.evans@email.com', '5678901234'),
(6, 'Quincy', 'Foster', 'quincy.foster@email.com', '6789012345'),
(7, 'Rachel', 'Green', 'rachel.green@email.com', '7890123456'),
(8, 'Steven', 'Hill', 'steven.hill@email.com', '8901234567'),
(9, 'Tina', 'Irwin', 'tina.irwin@email.com', '9012345678'),
(10, 'Uma', 'Jones', 'uma.jones@email.com', '0123456789');


INSERT INTO Payments (payment_id, student_id, amount, payment_date)
VALUES 
(1, 1, 500.00, '2023-01-15'),
(2, 2, 450.00, '2023-01-15'),
(3, 3, 550.00, '2023-01-15'),
(4, 4, 600.00, '2023-01-15'),
(5, 5, 500.00, '2023-01-15'),
(6, 6, 400.00, '2023-01-15'),
(7, 7, 450.00, '2023-01-15'),
(8, 8, 500.00, '2023-01-15'),
(9, 9, 550.00, '2023-01-15'),
(10, 10, 600.00, '2023-01-15');
