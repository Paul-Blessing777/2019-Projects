--SQL JOINS
--AS Clause, essentially renaming columns
--AS operator gets executed at the vewry end of a query,
--Meaning we cannot use the ALIAS inside a WHERE operator

SELECT amount as rental_price
FROM payment;

SELECT SUM(amount) AS net_revenue
FROM payment;

SELECT COUNT(amount) AS num_transactions
FROM payment;

SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id;

--Right
SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;

--WRONG
SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
HAVING total_spent > 100;



