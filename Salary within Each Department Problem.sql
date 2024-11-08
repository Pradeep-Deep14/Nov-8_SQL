CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    salary DECIMAL(10, 2),
    department_id INT
);

INSERT INTO employees (employee_id, employee_name, salary, department_id) VALUES
(1, 'Ravi', 60000, 1),
(2, 'Aisha', 50000, 1),
(3, 'Rajesh', 80000, 2),
(4, 'Sita', 70000, 2),
(5, 'Vikram', 55000, 1);


/*
Write a SQL query to rank employees based on their salary within each department
*/

SELECT * FROM EMPLOYEES

WITH CTE AS
(
SELECT *,
       DENSE_RANK()OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS RANK
FROM EMPLOYEES
)
SELECT * FROM CTE
