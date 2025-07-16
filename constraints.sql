use learnsql;
--primary key unique+not null
create table department(
dept_id int primary key,
dept_name NVARCHAR(50)
)
select * from department;
--create employee table with foreign key--
CREATE TABLE employees(
    emp_id INT PRIMARY KEY,
    emp_name NVARCHAR(50),
    emp_salary DECIMAL(10,2)--CHECK (emp_salary > 0), add it wile create (-ve)--,
    dept_id INT,
    foreign key (dept_id) references department(dept_id)
    );
select * from employees;
 
 --Alter existing employees table to add a new column with UNIQUE constraint--
 alter table employees
 add emp_email NVARCHAR(50) unique;

 --first insert dept--
INSERT INTO department (dept_id, dept_name) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

-- This will work now--
INSERT INTO employees (emp_id, emp_name, emp_salary, dept_id, emp_email)
VALUES (1, 'Rajan', 60000, 1, 'rajan@example.com');


--Insert 3 more valid employees--
INSERT INTO employees (emp_id, emp_name, emp_salary, dept_id, emp_email)
VALUES 
(2, 'Kishore', 58000, 1, 'kishore@example.com'),
(3, 'Meena',   52000, 2, 'meena@example.com'),
(4, 'Ravi',    73000, 3, 'ravi@example.com');


--This wil fail--
INSERT INTO employees (emp_id, emp_name, emp_salary, dept_id, emp_email)
VALUES (5, 'Arun', 61000, 2, 'kishore@example.com');


-- Negative salary invalid salry (check)--not work 

INSERT INTO employees (emp_id, emp_name, emp_salary, dept_id, emp_email)
VALUES (6, 'Suresh', -40000, 1, 'suresh@example.com'); 

ALTER TABLE employees
ADD CONSTRAINT chk_salary_positive CHECK (emp_salary > 0);

/*UPDATE employees
SET emp_salary = 50000
WHERE emp_salary <= 0;
*/

-- Negative salary invalid salry (check)
INSERT INTO employees (emp_id, emp_name, emp_salary, dept_id, emp_email)
VALUES (7, 'TestUser', -50000, 2, 'test@example.com');

-- check null--
SELECT * FROM employees WHERE emp_name IS NULL;

--insert null will fail--
INSERT INTO employees (emp_id, emp_name, emp_salary, dept_id, emp_email)
VALUES (11, NULL, 50000, 1, 'nullfail@example.com');

