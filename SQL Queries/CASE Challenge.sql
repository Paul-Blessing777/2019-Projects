--CASE Challenge
--Want to know and compare the various amounts of films we have per movie rating
SELECT * FROM film;

select
SUM(CASE
	WHEN rating = 'R' THEN 1
	ELSE 0
	END) AS R,
SUM(CASE
   	WHEN rating = 'PG' THEN 1
   ELSE 0
   END) AS PG,
SUM(CASE
   WHEN rating = 'PG-13' THEN 1
   ELSE 0
   END) AS PG13
FROM film