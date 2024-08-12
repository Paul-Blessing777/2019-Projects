--Full Outer JOINs
--Outer JOINS allow us to specfiy how to deal with values only present in one of the tables being joined

--Full outer join produces the set of all records in Table A and Table B, 
--with matching records from both sides where available. If there is no match, the missing side will contain null.

SELECT * FROM payment
FULL OUTER JOIN customer on customer.customer_id = payment.customer_id
WHERE payment.payment_id IS null OR customer.customer_id IS null;
--results in no null records upon checking

SELECT COUNT(DISTINCT(customer_id)) FROM customer
SELECT COUNT(DISTINCT(customer_id)) FROM payment