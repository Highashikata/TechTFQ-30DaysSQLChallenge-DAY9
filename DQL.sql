SELECT *
FROM ORDERS;

--- wewill be using union

SELECT DATES,
	PRODUCT_ID AS PRODUCTS
FROM ORDERS
UNION
SELECT DATES,
	CONCAT(PRODUCT_ID, ' ,' ,
		LEAD(PRODUCT_ID) OVER(PARTITION BY DATES ORDER BY DATES)) AS PRODUCTS
FROM ORDERS

---- Brainstomring and testing queries

SELECT 
    dates, 
    cast(product_id as text) AS PRODUCTS
FROM 
    orders
UNION
SELECT 
    DATES, 
    CONCAT(PRODUCT_ID, ' ,',LEAD(PRODUCT_ID) OVER(partition by dates ORDER BY DATES)) AS PRODUCTS
FROM 
    ORDERS
ORDER BY
	dates, products;



SELECT DATES,
	STRING_AGG(CAST(PRODUCT_ID AS varchar), ' ') AS PRODUCTS
FROM ORDERS -- WHERE DATES = '2024-02-18'
-- 	AND CUSTOMER_ID = 1
GROUP BY DATES,
	CUSTOMER_ID
UNION
SELECT DATES,
	CAST(PRODUCT_ID AS varchar) AS PRODUCTS
FROM ORDERS
ORDER BY DATES,
	PRODUCTS;




