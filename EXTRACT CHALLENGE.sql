--TIMESTAMPS AND EXTRACT CHALLENGE

--During which months did payments occur?
--Format your answer to return back the full month name
SELECT DISTINCT(TO_CHAR(payment_date, 'MONTH')) FROM payment;

--How many payments occurred on a Monday?

SELECT COUNT(TO_CHAR(payment_date, 'ID')) AS Day_of_Week FROM payment
WHERE TO_CHAR(payment_date, 'ID') = '1';