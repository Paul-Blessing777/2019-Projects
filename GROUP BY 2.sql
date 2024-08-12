--GROUP BY part One
-- We need a categorical column to perform a GROUP BY
--GROUP BY must appear right after a FROM or WHERE statement
--In the SELECT statement. columns must either have an aggregate function or be in the Group BY call

SELECT rating, ROUND(AVG(rental_rate),2), COUNT(rating) AS number_ratings FROM film
WHERE rental_rate > 2
GROUP BY rating
ORDER BY rating;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) DESC;

SELECT customer_id, staff_id, SUM(amount) FROM payment
GROUP BY staff_id, customer_id
ORDER BY customer_id, staff_id;

--DATE() removes the timestamp portion
SELECT DATE(payment_date), SUM(amount) FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC
