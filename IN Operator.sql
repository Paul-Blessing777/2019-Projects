--IN statement
--In certain cases you want to check for multiple possible value options, for example
--if a user's name shows up IN a list of known names
--We can use the IN operator to create a condition that checks to see if a value is
--included in a list of multiple options

SELECT DISTINCT(amount), * from payment
WHERE amount IN (0.99,1.98,1.99);

SELECT COUNT(amount) from payment
WHERE amount IN (0.99,1.98,1.99);

SELECT COUNT(amount) from payment
WHERE amount NOT IN (0.99,1.98,1.99);

SELECT * FROM customer
WHERE first_name IN ('John', 'Jake', 'Julie');