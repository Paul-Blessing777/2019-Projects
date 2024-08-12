--INNER JOIN
--JOINs allow us to combine multiple tables together
--Different JOIN types help to decide how to deal with info only present in one of the joined tables.

--INNER JOINs will result with records that match in both tables
--Table order won't matter in an inner join

SELECT payment_id, payment.customer_id, first_name, last_name FROM payment
INNER JOIN customer on customer.customer_id = payment.customer_id
ORDER BY payment.customer_id
