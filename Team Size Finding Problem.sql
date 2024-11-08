DROP TABLE IF EXISTS Employee;
CREATE TABLE employees(employee_id int PRIMARY KEY, team_id INT);

INSERT INTO employees (employee_id, team_id) VALUES
(1, 8),
(2, 8),
(3, 8),
(4, 7),
(5, 9),
(6, 9);

SELECT * FROM employees;

-- Flipkart Data Analyst Interview
/*
Problem statement
Table: Employee

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| employee_id   | int     |
| team_id       | int     |
+---------------+---------+
employee_id is the primary key for this table.
Each row of this table contains the ID of each employee and their respective team.

Write an SQL query to find the team size of each of the employees.

*/


SELECT EMPLOYEE_ID,
	   COUNT(TEAM_ID)OVER(PARTITION BY TEAM_ID )AS TEAM_SIZE  
FROM EMPLOYEES
ORDER BY 1