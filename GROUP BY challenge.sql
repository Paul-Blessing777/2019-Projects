--GROUP BY Challenges
--We have two staff members, with staff IDs 1 & 2, we want to give a bonus to the member that handled the highest
--number of payments.
--How many payments did each staff member handle and who gets the bonus?

SELECT staff_id, COUNT(payment_id) FROM payment
WHERE staff_id = 1 or staff_id = 2
GROUP BY staff_id
ORDER BY COUNT(payment_id) DESC;
--Staff member 2 wins!

--What is the avg replacement cost per MPAA rating?

SELECT rating, ROUND(AVG(replacement_cost),2) FROM film
GROUP BY rating
ORDER BY ROUND(AVG(replacement_cost),2);

--We are running a promotion to reward our top 5 customers with coupons
--What are the customer ids of the top 5 customers by total spend?
select customer_id, SUM(amount) from payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5