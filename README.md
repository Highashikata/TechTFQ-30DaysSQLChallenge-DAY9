# TechTFQ-30DaysSQLChallenge-DAY9


Add Missing values SQL challenge

going through the challenge of SQL interview questions featured in the TechTFQ channel



In this repository we will be going through the SQL interview questions featured in the following YouTube video [SQL Interview Questions](https://www.youtube.com/watch?v=o5W-iAK21ws&list=PLavw5C92dz9Hxz0YhttDniNgKejQlPoAn&index=9).

# **Day 9: The problem statement: Merging prducts SQL**


PROBLEM STATEMENT:
Write an sql query to merge products per customer for each day as shown in expected output.

![image](https://github.com/Highashikata/TechTFQ-30DaysSQLChallenge-DAY9/assets/96960411/1b5f31f8-b080-4d31-88b3-bb003bda1273)

** DDL & DML **

```
drop TABLE if exists orders;
CREATE TABLE orders 
(
	customer_id 	INT,
	dates 			DATE,
	product_id 		INT
);
INSERT INTO orders VALUES
(1, '2024-02-18', 101),
(1, '2024-02-18', 102),
(1, '2024-02-19', 101),
(1, '2024-02-19', 103),
(2, '2024-02-18', 104),
(2, '2024-02-18', 105),
(2, '2024-02-19', 101),
(2, '2024-02-19', 106); 


select * from orders;

```
