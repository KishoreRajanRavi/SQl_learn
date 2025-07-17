use learnsql;
--inner join--
--dep_id is common in two table--
select e.emp_name,e.emp_salary,d.dept_name
from employees e
inner join department d on e.dept_id=d.dept_id;

--left join--
SELECT e.emp_name, e.emp_salary, d.dept_name
FROM employees e
LEFT JOIN department d ON e.dept_id = d.dept_id;

--right join--
SELECT e.emp_name, e.emp_salary, d.dept_name
FROM employees e
RIGHT JOIN department d ON e.dept_id = d.dept_id;

--full outer join--
SELECT e.emp_name, e.emp_salary, d.dept_name
FROM employees e
FULL OUTER JOIN department d ON e.dept_id = d.dept_id;


--cross join--
SELECT e.emp_name, d.dept_name
FROM employees e
CROSS JOIN department d;
