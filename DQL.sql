use learnsql
--Used Employee Table--
--Insert some more rows for use select and other operations--
insert into employee (emp_id,emp_name,salary,emp_dep)
values
(2,'Arun',55000,'HR'),
(3, 'Deepa',    70000, 'IT'),
(4, 'Meena',    50000, 'HR'),
(5, 'Ravi',     75000, 'Finance');

--To view all column--
select * from employee;

--Count total number of employees--
select count(*) as total_employees from employee;

-- Sum of Salary of employees--
select sum(salary) as total_salary from employee;

--average of Salary of employee--
select AVG(salary) as average_salary from employee;

--min and max of employee salary--
select min(salary) as lowest_salary,max(salary) as highest_salary from employee;

--Group by total salary by department wise--
select emp_dep,sum(salary)as dep_total  from employee group by emp_dep;

--employee count by dep--
select  emp_dep ,count(*) as emp_count from employee group by emp_dep;

--use having print salary >50000--
select emp_dep,sum(salary) as total_salary from employee group by emp_dep having sum(salary)>100000;

--salary by descending--
select emp_name,salary from employee order by salary desc;

