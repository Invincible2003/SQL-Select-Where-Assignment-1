-- 1. Display all student details
SELECT * 
FROM Students;

-- 2. Show only STUDENT_NAME and CITY of all students
SELECT STUDENT_NAME, CITY
FROM Students;

-- 3. Fetch all students who live in Delhi
SELECT *
FROM Students
WHERE CITY = 'Delhi';

-- 4. Display courses where price is greater than 4000
SELECT *
FROM Courses
WHERE PRICE > 4000;

-- 5. Show all enrollments with status = 'Active'
SELECT *
FROM Enrollments
WHERE STATUS = 'Active';
PART B
-- 6. Fetch students whose age is between 20 and 25
SELECT *
FROM Students
WHERE AGE BETWEEN 20 AND 25;

-- 7. Display students whose name starts with 'P'
SELECT *
FROM Students
WHERE STUDENT_NAME LIKE 'P%';

-- 8. Show courses where category is Database and price is less than 5000
SELECT *
FROM Courses
WHERE CATEGORY = 'Database'
AND PRICE < 5000;

-- 9. Fetch enrollments done after 1 Feb 2024
SELECT *
FROM Enrollments
WHERE ENROLL_DATE > '2024-02-01';

-- 10. Display students not living in Delhi
SELECT *
FROM Students
WHERE CITY <> 'Delhi';
PART C
-- 11. Show students older than the average age
SELECT *
FROM Students
WHERE AGE > (
    SELECT AVG(AGE) FROM Students
);

-- 12. Display students who have not enrolled in any course
SELECT *
FROM Students
WHERE STUDENT_ID NOT IN (
    SELECT STUDENT_ID FROM Enrollments
);

-- 13. Fetch courses that no student has completed
SELECT *
FROM Courses
WHERE COURSE_ID NOT IN (
    SELECT COURSE_ID
    FROM Enrollments
    WHERE STATUS = 'Completed'
);

-- 14. Display students who enrolled in Advanced SQL
SELECT s.*
FROM Students s
JOIN Enrollments e ON s.STUDENT_ID = e.STUDENT_ID
JOIN Courses c ON e.COURSE_ID = c.COURSE_ID
WHERE c.COURSE_NAME = 'Advanced SQL';

-- 15. Show students from Delhi who have an Active enrollment
SELECT s.*
FROM Students s
JOIN Enrollments e ON s.STUDENT_ID = e.STUDENT_ID
WHERE s.CITY = 'Delhi'
AND e.STATUS = 'Active';
