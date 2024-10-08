--CHECK Constraint
--Allows us to create more customized constraints that adhere to a certain condition
--Such as making sure all inserted integer values fall below a certain threshold.

CREATE TABLE employees(
	emp_id SERIAL Primary KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birthdate DATE CHECK (birthdate > '1900-01-01'),
	hire_date DATE CHECK (hire_date > birthdate),
	salary INTEGER CHECK (salary > 0)
);

INSERT INTO employees(
first_name,
last_name,
birthdate,
hire_date,
salary)
	VALUES('Jose',
		  'Portilla',
		  '1999-11-03',
		  '2010-01-01',
		  100);
		  
INSERT INTO employees(
first_name,
last_name,
birthdate,
hire_date,
salary)
	VALUES('Geneva',
		  'Shellenberger',
		  '1999-08-23',
		  '2010-01-01',
		  -100)