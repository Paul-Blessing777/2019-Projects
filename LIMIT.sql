--LIMIT
--Allows us to limit the # of rows returned for a query
--Useful if you just want to see the top few rows for table.
--Useful in combo with ORDER BY
SELECT * FROM payment
WHERE amount <> 0
ORDER BY payment_date DESC
LIMIT 5;