--HAVING Challenge
--We're making a platinum status to customers that have had 40 or more payments
--What customer_ids are eligible for platinum status?

SELECT customer_id FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= 40;

--WHat are the customer Ids of customers who have spent more than $100 in payment transactions with our staff_id
--member 2

SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100
ORDER BY SUM(amount) DESC;