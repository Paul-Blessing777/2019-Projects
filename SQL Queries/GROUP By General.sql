--GROUP By
--GROUP BY will allow us to aggregate data and apply
--functions to better understand how data is distributed per category
 --Aggregate Functions
--Main idea is to take multiple inputs and return a single output
--AVG() returns average value
--COUNT() returns # of values
--MAX() returns maximum value
--MIN() returns minimum value
--SUM() returns the sum of values
--ROUND() specify percision after the decimal

SELECT MIN(REPLACEMENT_COST)
FROM FILM;


SELECT MAX(REPLACEMENT_COST)
FROM FILM;


SELECT MAX(REPLACEMENT_COST),
	MIN(REPLACEMENT_COST)
FROM FILM;


SELECT ROUND(AVG(REPLACEMENT_COST),2) FROM FILM;

SELECT SUM(replacement_cost) from film;