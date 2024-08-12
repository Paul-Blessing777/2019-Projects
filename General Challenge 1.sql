--General Challenge 1
--How many payment transactions were greater than $5?

SELECT COUNT(*) FROM payment
WHERE amount > 5;

SELECT * FROM payment
WHERE amount > 5
ORDER BY amount ASC;

--How Many actors have a first name that starts with P?
SELECT first_name, last_name FROM actor
WHERE first_name LIKE 'P%' or first_name LIKE 'p%';

--How many unique districts are our customers from?
SELECT COUNT(DISTINCT(district)) FROM address;

--Retrieve the list of names for those distinct districts
SELECT DISTINCT(district) FROM address;

--How many films have a rating of R and a replacement cost b/w $5-$15?
SELECT COUNT(title) FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15;

--How many films have the word "Truman" somewhere in the title
SELECT COUNT(title) FROM film
WHERE title LIKE '%Truman%';

