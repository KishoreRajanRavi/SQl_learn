use learnsql

CREATE TABLE EMPLOYEE(
 emp_id int Primary key,
 emp_name NVARCHAR(50),
 salary DECIMAL(10,2),
 emp_dep NVARCHAR(50)

)

--1)create login user at server level--
create login rajan with password = 'Strong';

--2)switch to current database--
use learnsql

--3)Create user in the learnsql database--
create user rajan for login rajan;

--4)Grant select and Insert permission on employee table--
Grant Select,insert on employee to rajan;

--To test Permissiom--
USE LearnSQL;
GO
--1)Switch to user--
Execute as User = 'rajan';
Go

--2)Try Select select data from employee table--
Select * from employee;

--3)Now try insert a row in employee table--
insert into employee(emp_id,emp_name,salary,emp_dep)values
(1,'rajan','50000','IT');
Go

--4)Now try update  a row in employee table--
update employee 
set salary=75000
where emp_id =1;

--5)Revoke command to remove access for insert operation --
Revoke insert on employee from rajan
--test it--
EXECUTE AS USER = 'rajan';
GO
--try to insert a values--
INSERT INTO employee (emp_id, emp_name, salary, emp_dep)
VALUES (2, 'Arun', 55000, 'HR');
GO
--6)Return to admin user--
Revert ;
Go