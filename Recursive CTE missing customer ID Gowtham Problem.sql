CREATE TABLE Customers (
 customer_id INT
);

INSERT INTO Customers (customer_id)
VALUES (1), (2), (3), (5), (7), (8), (10);


SELECT * FROM CUSTOMERS

/*Given a Customers table, write a query to find all missing customer IDs in 
the range between 1 and the maximum customer_id present in the table.
𝐀𝐬𝐬𝐮𝐦𝐩𝐭𝐢𝐨𝐧𝐬:
customer_id is a positive integer.
The maximum value of customer_id will not exceed 100.
Return the result in ascending order.
*/

WITH RECURSIVE CTE AS
(
	SELECT 1 AS CUSTOMER_ID
	UNION ALL
	SELECT CUSTOMER_ID + 1
	FROM CTE
	WHERE CUSTOMER_ID < (SELECT MAX(CUSTOMER_ID) FROM CUSTOMERS)  
)
SELECT CTE.CUSTOMER_ID
FROM CTE
LEFT JOIN 
CUSTOMERS C ON CTE.CUSTOMER_ID=C.CUSTOMER_ID
WHERE C.CUSTOMER_ID IS NULL
ORDER BY 1