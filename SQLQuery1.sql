--Basics of SQL Syntax--

use learnsql;
go
--DDL (Data Definition Language)--
create table students(
id int primary key,
name nvarchar(50),
age int
)

--add email--
ALTER TABLE students
ADD email NVARCHAR(100);
GO
--Modify column name to allow 100 characters--
ALTER TABLE students
ALTER COLUMN name NVARCHAR(100);
GO
--drop the email column--
ALTER TABLE students
DROP COLUMN email;
GO

-- Delete all data but keep structure--
TRUNCATE TABLE students;
GO

--delete entire table--
DROP TABLE students;
GO
--DML (Data Manipulation Language)--

--insert values--
INSERT INTO students (id, name, age)
VALUES (1, 'Kishore', 21);
GO
--insert multiple values--
INSERT INTO students (id, name, age)
VALUES 
(2, 'John', 22),
(3, 'Priya', 20);
GO
--select specific col--
SELECT name, age FROM students;
GO

--where for filter values--
SELECT * FROM students
WHERE age > 21;
GO
--modify existing record--
UPDATE students
SET age = 23
WHERE id = 2;

--delete records--
DELETE FROM students
WHERE id = 3;
GO



--to print the data--
SELECT * FROM students;

INSERT INTO students VALUES (1, 'Kishore', 21);
