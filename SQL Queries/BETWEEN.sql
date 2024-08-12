--Between Command
--The between operator can be used to match a value against a range of values
--value BETWEEN low AND high
-- Can combine the BETWEEN keyword with NOT
SELECT COUNT(*) FROM payment
WHERE amount BETWEEN 8 AND 9;

SELECT COUNT(*) FROM payment
WHERE amount NOT BETWEEN 8 AND 9;

SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';