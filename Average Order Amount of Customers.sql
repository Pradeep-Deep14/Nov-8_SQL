CREATE TABLE customers (
         customer_id INT PRIMARY KEY, 
         customer_name VARCHAR(100)
     );
     CREATE TABLE orders (
         order_id INT PRIMARY KEY, 
         customer_id INT, 
         amount DECIMAL(10, 2)
     );
     INSERT INTO customers VALUES 
         (1, 'Alice'), 
         (2, 'Bob'); 
     INSERT INTO orders VALUES 
         (1, 1, 500.00), 
         (2, 1, 700.00), 
         (3, 2, 300.00);


SELECT * FROM CUSTOMERS
SELECT * FROM ORDERS

/*
Find the average order amount for each customer.
*/

SELECT C.CUSTOMER_NAME,
       AVG(O.AMOUNT)AS AVERAGE_ORDER_AMOUNT
FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID=O.CUSTOMER_ID
GROUP BY 1