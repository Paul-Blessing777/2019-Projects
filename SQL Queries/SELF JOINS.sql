--SELF JOIN
--A self join is a query in which a table is joined to itself
--Useful for comparing values in a column of rows within the same table
--When using a self join it is required to use an alias

SELECT employeesA.name, employeesB.name AS rep
FROM employees AS employeesA
JOIN employees AS employeesB ON
employeesB.emp_id = employeesA.report_id;

SELECT f1.title, f2.title, f1.length
FROM film AS f1
JOIN film AS f2 ON
f2.film_id <> f1.film_id;