--SubQuery
--Subquery allows you to construct complex queries, essentially performing a query on the results of another query
--Involves two SELECT statements

--subquery from another table
--Get students and their grades that are on the honor roll
--SELECT student, grade FROM test_scores
--WHERE student IN (SELECT student FROM honor_roll_table)

--EXISTS operator is used to test for existence of rows in a subquery
--Typically a subquery is passed in the EXISTS() function to check if any rows are returned with the subquery
--Returns True or False

SELECT title, rental_rate FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);


SELECT film_id, title
FROM film
WHERE film_id IN
(SELECT inventory.film_id FROM rental
LEFT JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY title;

SELECT first_name || ' ' || last_name AS Customer_Name FROM customer
WHERE EXISTS(SELECT * FROM payment 
WHERE payment.customer_id = customer.customer_id AND amount > 11) AND active <> 0;