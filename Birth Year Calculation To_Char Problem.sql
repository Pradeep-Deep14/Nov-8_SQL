CREATE TABLE students (
         student_id INT PRIMARY KEY, 
         student_name VARCHAR(100), 
         birthdate DATE
     );
     INSERT INTO students VALUES 
         (1, 'Aisha Patel', '2000-06-15'), 
         (2, 'Rahul Desai', '1999-11-30'), 
         (3, 'Sita Verma', '2000-03-22');


SELECT * FROM STUDENTS

/*
Find all students who were born in the year 2000 using a date function.
*/

SELECT STUDENT_NAME
FROM STUDENTS
WHERE TO_CHAR(BIRTHDATE ,'YYYY')= '2000'