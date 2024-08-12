--CASE
--We can use CASE to only execute SQL code when certain conditions are met
--Very similar to IF/ELSE statements from other languages.
--Two main ways to use a CASE statement, either a general CASE or a CASE expression
--Both methods lead to the same results.

--General
SELECT customer_id,
CASE 
	WHEN (customer_id <=100) THEN 'Premium'
	WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus' 
	ELSE 'Normal' 
END AS Customer_Status
FROM customer;

--Expression
SELECT customer_id,
CASE customer_id
	WHEN 2 THEN 'Winner'
	WHEN 5 THEN 'Second Place'
	ELSE 'Normal'
END AS raffle_results
FROM customer;

SELECT 
SUM(CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END) AS bargins,
SUM(CASE rental_rate
   WHEN 2.99 THEN 1
   ELSE 0
   END) As regular,
 SUM(CASE rental_rate
   WHEN 4.99 THEN 1
   ELSE 0
   END) As premium
FROM film;