--DROP table
--Allows for the complete removal of a column from a table
--Also removes all indexes and constraints involving the column
--It will not remove columns used in views, triggers, or stored procedures without the additional
-- CASCADE clause.

ALTER TABLE new_info
DROP COLUMN people;

SELECT * FROM new_info;

ALTER TABLE new_info
DROP COLUMN IF EXISTS people;