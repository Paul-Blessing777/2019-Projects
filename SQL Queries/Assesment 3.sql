--Create two tables: teachers and students

CREATE TABLE teachers(teacher_id SERIAL PRIMARY KEY,
					 first_name VARCHAR(50) NOT NULL,
					 last_name VARCHAR(50) NOT NULL,
					 homeroom_number INTEGER,
					 department VARCHAR(60),
					 email VARCHAR(60) UNIQUE,
					 phone VARCHAR(12) UNIQUE
					 )
					 
CREATE TABLE students(student_id SERIAL PRIMARY KEY,
					first_name VARCHAR(50) NOT NULL,
					 last_name VARCHAR(50) NOT NULL,
					 homeroom_number INTEGER,
					  email VARCHAR(60) UNIQUE,
					 phone VARCHAR(12) UNIQUE NOT NULL,
					  graduation_year INTEGER CHECK (graduation_year > 2024)
					 )
					 
INSERT INTO teachers(first_name,
					last_name,
					homeroom_number,
					department,
					email,
					phone)
		VALUES('Jonas',
			  'Salk',
			  5,
			  'Biology',
			  'jsalk@school.com',
			  '777-555-4321')
			  
INSERT INTO students(first_name,
					last_name,
					homeroom_number,
					phone,
					graduation_year
					)
	VALUES('Mark',
		   'Watney',
		   5,
		   '777-555-1234',
		   2035
	)
	
SELECT * FROM students
SELECT * FROM teachers;
					