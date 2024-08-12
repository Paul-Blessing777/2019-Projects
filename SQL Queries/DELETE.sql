-- Delete
--To delete everything from a table we would use:
--DELETE FROM table

INSERT INTO job(job_name)
VALUES ('Cowboy');

SELECT * FROM job;

DELETE FROM job
WHERE job_name = 'Cowboy'
RETURNING job_id, job_name;

SELECT * FROM job;