-- The Count Function returns the # of input rows that match a specific condition of a query
-- We can apply COUNT on a specific column or just pass COUNT(*), we will soon see this should return the same

--Count by itself simply returns back a count of the # of rows in a table
SELECT COUNT(*) FROM Customer;

SELECT COUNT(first_name) FROM customer
WHERE first_name = 'John';

SELECT COUNT(DISTINCT first_name) from customer;

SELECT COUNT(*) FROM payment

SELECT COUNT(DISTINCT amount) FROM payment