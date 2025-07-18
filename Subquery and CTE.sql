use learnsql;
--subquery--
select max(salary) as Second_highest_Salary 
from sql_operations where salary < 
(select max(salary) from sql_operations);

--CTE--
WITH salary_rank AS (
    SELECT name, salary,
           DENSE_RANK() OVER (ORDER BY salary DESC) AS rank
    FROM sql_operations
)
SELECT name, salary
FROM salary_rank
WHERE rank = 2;
