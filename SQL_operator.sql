use learnsql;
--create a table--
CREATE TABLE sql_operations (
    id INT PRIMARY KEY,
    name NVARCHAR(50),
    age INT,
    salary INT,
    city NVARCHAR(50)
);


--insert values--
INSERT INTO sql_operations (id, name, age, salary, city)
VALUES
(1, 'Kishore', 21, 58000, 'Salem'),
(2, 'Rajan', 25, 60000, 'Chennai'),
(3, 'Meena', 19, 48000, 'Madurai'),
(4, 'Vikram', 30, 72000, 'Salem'),
(5, 'Divya', 22, 51000, 'Coimbatore');


--Arithmetic operation--
SELECT salary + 5000 AS NewSalary FROM sql_operations;

SELECT salary - 5000 AS ReducedSalary FROM sql_operations;

SELECT salary * 2 AS Doubled_increment FROM sql_operations;

SELECT salary / 2 AS first_half FROM sql_operations;

--Comparision Operator--

SELECT * FROM sql_operations WHERE age = 25;

SELECT * FROM sql_operations WHERE age >= 25;

SELECT * FROM sql_operations WHERE name!='kishore';

SELECT * FROM sql_operations WHERE age<25;

SELECT * FROM sql_operations WHERE age>25;

--Logical Operator--
SELECT * FROM sql_operations WHERE city = 'Salem' AND salary > 60000;

SELECT * FROM sql_operations WHERE city = 'Salem' or salary > 60000;


SELECT * FROM sql_operations WHERE NOT(city = 'Salem');

--concatenation--
SELECT name + ' from ' + city AS Details FROM sql_operations;

