--JOINS Challenge

--1
--California sales tax law has changed and we need to alert our cusomers to this thru email
--What are the emails of the customers who live in California?

SELECT first_name, last_name, email, address.district FROM customer
LEFT JOIN address ON address.address_id = customer.address_id
WHERE address.district = 'California';

--2
--A customer is a big fan of an actor "Nick Wahlberg" and wants to know which movies he's in
--Get a list of all movies the actor is in
select film.title, actor.first_name, actor.last_name from film
LEFT JOIN film_actor on film_actor.film_id = film.film_id
LEFT JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE actor.first_name = 'Nick' AND actor.last_name = 'Wahlberg'
ORDER BY film.title;