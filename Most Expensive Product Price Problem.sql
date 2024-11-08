CREATE TABLE products (
         product_id INT PRIMARY KEY, 
         product_name VARCHAR(100), 
         price DECIMAL(10, 2)
     );
     INSERT INTO products VALUES 
         (1, 'Smartphone', 700.00), 
         (2, 'Laptop', 1200.00), 
         (3, 'T-shirt', 20.00);


SELECT * FROM PRODUCTS


/*
Find the most expensive product.
*/

SELECT PRODUCT_NAME,
       MAX(PRICE)AS MOST_EXPENSIVE_PRODUCT_PRICE
FROM PRODUCTS
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1