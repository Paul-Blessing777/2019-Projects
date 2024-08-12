--Advanced SQL Commands
--Timestamps and Extract
--TIME - contains only time
--DATE - contains only date
--TIMESTAMP - contains date and time
--TIMESTAMPTZ - Contains date, time, and timezone

--Shows a bunch of info about our environment
SHOW ALL;

SHOW TimeZone;

--Gives timestamp info for this exact moment
SELECT NOW();

--Returns as a string
SELECT TIMEOFDAY();


SELECT CURRENT_TIME;

SELECT CURRENT_DATE;
