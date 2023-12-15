SELECT 
    course_id, 
    AVG(student_count) AS average_students_per_course
FROM 
    (SELECT 
         course_id, 
         COUNT(student_id) AS student_count
     FROM 
         Enrollments
     GROUP BY 
         course_id) AS EnrollmentCounts
GROUP BY 
    course_id;


---Student(s) With the Highest Payment:
SELECT 
    s.student_id, 
    s.first_name, 
    s.last_name, 
    p.amount
FROM 
    Students s
JOIN 
    Payments p ON s.student_id = p.student_id
WHERE 
    p.amount = (SELECT MAX(amount) FROM Payments);


--Courses with the Highest Number of Enrollments:
SELECT 
    c.course_id, 
    c.course_name, 
    COUNT(e.student_id) AS total_enrollments
FROM 
    Courses c
JOIN 
    Enrollments e ON c.course_id = e.course_id
GROUP BY 
    c.course_id, c.course_name
HAVING 
    COUNT(e.student_id) = (SELECT MAX(total_enrollments) FROM (SELECT COUNT(student_id) AS total_enrollments FROM Enrollments GROUP BY course_id) AS EnrollmentCounts);

---Total Payments Made to Courses Taught by Each Teacher:

SELECT
t.teacher-id,
t.first_name,
t.last_name,
SUM(p.amount) as TotalPayment
FROM Teachers t
JOIN Courses c on t.teacher_id=c.teacher_id
JOIN Enrollment e on c.course_id= e.course_id
JOIN Payments p on e.student_id=p.student_id
GROUP BY  t.teacher_id, t.first_name, t.last_name;

--Students Enrolled in All Available Courses:
SELECT s.student_id, s.first_name, s.last_name, c.course_id, c.course_name
FROM Students s 
JOIN Enrollment e on s.student_id=e.student_id
JOIN Courses c on e.course_id=c.course_id
