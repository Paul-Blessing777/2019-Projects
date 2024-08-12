--UPDATE COMMAND
--Allows for the changing of values of the columns in a table
SELECT * FROM account;

UPDATE account
SET last_login = CURRENT_TIMESTAMP;

UPDATE account
SET last_login = created_on;

--Updating based on a column from another table
UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account.user_id;

SELECT * FROM account_job;

UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email, last_login, created_on;