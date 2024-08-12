--TIMESTAMPS AND EXTRACT II
--EXTRACT() allows you to extract or obtain a sub-component of a date value
--YEAR, MONTH, DAY, WEEK, QUARTER

--AGE(): Calculates and returns the current age given a timestamp

--TO_CHAR(): General function to convert data types to text
--Useful for timestamp formatting

SELECT EXTRACT(YEAR FROM payment_date) AS myyear
FROM payment;

SELECT EXTRACT(QUARTER FROM payment_date) AS quarter
FROM payment;

SELECT AGE(payment_date) FROM payment;


SELECT TO_CHAR(payment_date, 'yyyy') FROM payment;

SELECT TO_CHAR(payment_date, 'MONTH-YYYY') FROM payment;

SELECT TO_CHAR(payment_date, 'MM/dd/YYYY') FROM payment;

