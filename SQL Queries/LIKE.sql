--LIKE and ILIKE
--What if we want to match against a general pattern in a string?
--e.g. all emails ending @gmail.com or all names that start with an 'A'

--LIKE allows us to perform pattern matching against string data with the use of wildcard characters
--Percent %: Maches any sequence of characters
--Underscore _: Matches any SINGLE character

SELECT first_name FROM customer
WHERE first_name LIKE 'A%';

SELECT first_name FROM customer
WHERE first_name LIKE '%a';

SELECT * from film
WHERE title LIKE 'Chamber Italia_';

SELECT first_name FROM customer
WHERE first_name LIKE '_her%';

SELECT COUNT(*) FROM customer
WHERE first_name LIKE 'J%';

SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE '%s';

SELECT * FROM customer
WHERE first_name NOT LIKE '%er%';

SELECT * FROM customer
WHERE first_name LIKE 'A%' AND last_name NOT LIKE 'B%'
ORDER BY last_name;