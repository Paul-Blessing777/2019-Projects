--UNION
--Used to combine the result set of two or more SELECT statements
--Basically serves to directly concatenate two results together

SELECT * FROM Sales2021_Q1
UNION
SELECT * FROM Sales2021_Q2
ORDER BY name_1;