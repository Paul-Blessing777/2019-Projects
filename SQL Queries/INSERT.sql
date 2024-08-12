--INSERT COMMAND
--Allows you yo add rows to a table.
SELECT * FROM account -- returns nothing

INSERT INTO account(username,password,email,created_on)
VALUES('Paul','password1', 'paul@mail.com', CURRENT_TIMESTAMP)

SELECT * FROM account;

INSERT INTO job(job_name)
VALUES('Astronaut')

SELECT * FROM job;

INSERT INTO job(job_name)
VALUES('President')

INSERT INTO account_job(user_id,job_id,hire_date)
VALUES(1,1,CURRENT_TIMESTAMP)

SELECT * FROM account_job

INSERT INTO account_job(user_id,job_id,hire_date)
VALUES(10,10,CURRENT_TIMESTAMP) --Will throw an error, violates foreign key constraint