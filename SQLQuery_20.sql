--Calculate Average Number of Students Enrolled in Each Course:
SELECT Courses.course_name, AVG(sub.enrollment_count) AS average_enrollment
FROM Courses
JOIN (
    SELECT course_id, COUNT(student_id) AS enrollment_count
    FROM Enrollments
    GROUP BY course_id
) AS sub ON Courses.id = sub.course_id
GROUP BY Courses.course_name;


--Identify Student(s) Who Made the Highest Payment:
SELECT Students.name
FROM Students
JOIN Payments ON Students.id = Payments.student_id
WHERE Payments.amount = (
    SELECT MAX(amount)
    FROM Payments
);

--List of Courses with the Highest Number of Enrollments:
SELECT Courses.course_name
FROM Courses
JOIN (
    SELECT course_id, COUNT(student_id) AS enrollment_count
    FROM Enrollments
    GROUP BY course_id
) AS sub ON Courses.id = sub.course_id
WHERE sub.enrollment_count = (
    SELECT MAX(enrollment_count)
    FROM (
        SELECT course_id, COUNT(student_id) AS enrollment_count
        FROM Enrollments
        GROUP BY course_id
    ) AS sub_count
);

--Total Payments Made to Courses Taught by Each Teacher:
SELECT Teacher.name, SUM(sub.total_payment) AS total_payments
FROM Teacher
JOIN (
    SELECT Courses.teacher_id, SUM(Payments.amount) AS total_payment
    FROM Courses
    JOIN Enrollments ON Courses.id = Enrollments.course_id
    JOIN Payments ON Enrollments.student_id = Payments.student_id
    GROUP BY Courses.teacher_id
) AS sub ON Teacher.id = sub.teacher_id
GROUP BY Teacher.name;


--Identify Students Enrolled in All Available Courses:
SELECT Students.name
FROM Students
WHERE NOT EXISTS (
    SELECT Courses.id
    FROM Courses
    WHERE NOT EXISTS (
        SELECT Enrollments.id
        FROM Enrollments
        WHERE Enrollments.student_id = Students.id AND Enrollments.course_id = Courses.id
    )
);
