--String Functions and Operators

SELECT length(first_name) FROM customer;

SELECT first_name || ' ' || last_name AS full_name FROM customer;

SELECT upper(first_name) || ' ' || upper(last_name) AS full_name FROM customer;

SELECT lower(left(first_name,1)) || lower(last_name) || '@gmail.com' AS custom_email
FROM customer


