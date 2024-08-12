-- Where statement allows us to specificy conditions on columns for the rows to be returned
--The Where clause appears immediately after the FROM clause of the SELECT statement
--The conditions are used to filter the rows returned from the SELECT statement
--PostgreSQL provides a variety of standard operators to construct the conditions.

--Comparison operators
-- = > < >= <> !-

--Logical operators
-- AND NOR NOT
SELECT * FROM customer
WHERE first_name = 'John';

SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99;

SELECT title FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99;


SELECT COUNT(*) FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99;


SELECT COUNT(*) FROM film
WHERE rating ='R' OR rating = 'PG-13';

SELECT COUNT(*) FROM film
WHERE rating !='R';

--Challenge
--What is the email for the customer with the name Nancy Thomas?
SELECT email FROM customer
WHERE first_name = 'Nancy';

--Customer needs description of movie "Outlaw Hanky"
SELECT description FROM film
WHERE title = 'Outlaw Hanky';

--Get phone # for customer that lives at 259 Ipoh Drive
SELECT phone from address
WHERE address = '259 Ipoh Drive';



