--Constraints
--Rules enforced on data columns on a table
--Used to prevent invalid data from being entered into the DB
--Ensures the accuraccy and reliability of the data in the DB

--Two main Types
--Column Constraints: Constrains the data in a column to adhere to certain conditions
--Table Constraints: Applied to the entire table rather than to an individual column

--Two Common Column Restraints:
--NOT NULL: Ensures that a column cannot have NULL value
--UNIQUE: Ensures that all values on a column are different

--CHECK: Ensures all values in a column satisfy certain conditions
--EXCLUSION: Ensures that if any two rows are compared on the specified operator, not all of these comparisons
-- will return TRUE

--Table Constraints:
--CHECK (conditions): check a condition when inserting or updating data
--REFERENCES: Constrain the value stored in the column that must exist in a column in another table
--UNIQUE (column_list): Forces values stored in the columns listed inside the parantheses to be unique
--PRIMARY KEY (column_list): Allows you to define the primary key that consists of multiple columns.

