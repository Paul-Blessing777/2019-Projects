--We want to reward our first 10 paying customers
-- What are the ids of the first 10 customers who created a payment?
SELECT customer_id FROM payment
ORDER By payment_date ASC
LIMIT 10;

--Challenge 2
--A customer wants to quickly rent a video to watch over their short lunch break
--What are the titles of the 5 shortest in length films?
SELECT title, length FROM film
ORDER BY length ASC
LIMIT 5;

--Challenge 3
-- If the previous customer can watch any movie that is 50 minutes or less in run time, how many options does he have?
SELECT COUNT(title) FROM film
WHERE length <= 50;
