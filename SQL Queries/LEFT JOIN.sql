--LEFT OUTER JOIN
--Results in the set of records that are in the left table,
--If there is no match with the right table, the results are null
--Order matters for left joins!

SELECT film.film_id, film.title, inventory_id FROM film
LEFT JOIN inventory ON inventory.film_id = film.film_id
WHERE inventory.film_id IS Null