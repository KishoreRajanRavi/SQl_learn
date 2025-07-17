--first  create a tabel--

CREATE TABLE stu (
    id INT PRIMARY KEY,
    name NVARCHAR(50),
    age INT
);
INSERT INTO stu (id, name, age)
VALUES 
(1, 'Kishore', 21),
(2, 'Ravi', 22),
(3, 'Meena', 23);

--create a view--
CREATE VIEW view_students_above_21 AS
SELECT name, age
FROM stu
WHERE age > 21;
SELECT * FROM view_students_above_21;


SELECT SUM(age) AS TotalAge FROM stu;

SELECT AVG(age) AS AverageAge FROM stu;

SELECT COUNT(*) AS TotalStudents FROM stu;

SELECT MIN(age) AS Youngest FROM stu;

SELECT MAX(age) AS Oldest FROM stu;