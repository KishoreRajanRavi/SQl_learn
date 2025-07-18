use learnsql;

SELECT emp_name,emp_salary FROM employees;

SELECT * FROM employees;


SELECT * FROM employees WHERE emp_salary > 50000;

SELECT dept_id, COUNT(*) 
FROM employees 
GROUP BY dept_id;


SELECT dept_id, AVG(emp_salary) as average
FROM employees 
GROUP BY dept_id
HAVING AVG(emp_salary) > 50000;


SELECT * FROM employees 
ORDER BY emp_salary DESC;



