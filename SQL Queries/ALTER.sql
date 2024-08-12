--ALTER Command
--Let's us change an existing table structure
--Adding, dropping, or renaming columns
--Changing a columns data type
--Set DEFAULT values for a column
--Add CHECK constraints
--Rename a table

CREATE TABLE information(
	info_id SERIAL PRIMARY KEY,
	title VARCHAR(50) NOT NULL,
	person VARCHAR(50) NOT NULL UNIQUE
);

SELECT * FROM information;

--Rename a Table
ALTER TABLE information
RENAME TO new_info;

SELECT * FROM new_info;

--Rename a column
ALTER TABLE new_info
RENAME COLUMN person TO people;

SELECT * FROM new_info;

--Throws an error since people column can't be null
INSERT INTO new_info(title)
VALUES('some new title');

--Let's remove the not null constraint on people
ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL;

--Now this shouldn't throw an error
INSERT INTO new_info(title)
VALUES('some new title');

SELECT * FROM new_info;





