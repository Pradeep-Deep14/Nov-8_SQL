CREATE TABLE employees (emp_id INT PRIMARY KEY, name VARCHAR(50), department VARCHAR(50), salary DECIMAL(10, 2));

INSERT INTO employees
	VALUES 
	(1, 'Amit', 'IT', 60000),
	(2, 'Kavya', 'IT', 80000),
	(3, 'Rahul', 'HR', 50000); 

SELECT * FROM EMPLOYEES

/*
Rank employees based on their salaries within each department from the employees table.
*/


SELECT *,
       DENSE_RANK()OVER(PARTITION BY DEPARTMENT ORDER BY SALARY DESC)AS RANK
FROM EMPLOYEES