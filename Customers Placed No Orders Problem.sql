CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10, 2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (customer_id, customer_name) VALUES
(1, 'Anjali'),
(2, 'Rohan'),
(3, 'Suresh'),
(4, 'Priya'),
(5, 'Rahul'),
(6, 'Vikram');

INSERT INTO orders (order_id, customer_id, amount, order_date) VALUES
(1, 1, 2500, '2023-01-01'),
(2, 2, 3000, '2023-01-02'),
(3, 1, 1500, '2023-01-03'),
(4, 3, 4000, '2023-01-04');

SELECT * FROM CUSTOMERS

SELECT * FROM ORDERS

/*

Write a SQL query to find customers who have never placed an order.

*/

SELECT  C.CUSTOMER_NAME
FROM CUSTOMERS C 
LEFT JOIN ORDERS O
ON C.CUSTOMER_ID=O.CUSTOMER_ID
WHERE O.ORDER_ID IS NULL