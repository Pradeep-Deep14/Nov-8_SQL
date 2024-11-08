CREATE TABLE products (
         product_id INT PRIMARY KEY, 
         product_name VARCHAR(100), 
         date_added DATE
     );
     INSERT INTO products VALUES 
         (1, 'Smartphone', CURRENT_DATE), 
         (2, 'Laptop', CURRENT_DATE - INTERVAL '10 days'), 
         (3, 'T-shirt', CURRENT_DATE - INTERVAL '40 days');

SELECT * FROM PRODUCTS


/*
List products added in the last 30 days.
*/

SELECT PRODUCT_NAME
FROM PRODUCTS
WHERE DATE_ADDED >= CURRENT_DATE - INTERVAL '30 Days'