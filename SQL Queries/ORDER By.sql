--Order By
--Used to sort rows based on column value, in either ascending or descending order
--Can Order By from more than one column
SELECT * FROM customer
ORDER BY first_name ASC;

SELECT * FROM customer
ORDER BY first_name DESC;

SELECT store_id,first_name,last_name FROM customer
ORDER BY store_id, first_name ASC;