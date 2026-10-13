-- CTEs

WITH CTE_example(Gender,avg_salary,max_salary,min_salary,salary_count) AS
(
SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal,min(salary) min_sal,count(salary) count_sal
from Parks_and_Recreation.employee_demographics dem
JOIN Parks_and_Recreation.employee_salary sal
    ON dem.employee_id = sal.employee_id
GROUP by gender
)
SELECT *
FROM CTE_example;



WITH CTE_example AS
(
SELECT  employee_id,gender, birth_date
from Parks_and_Recreation.employee_demographics 
WHERE birth_date >'1985-01-01'
),
CTE_example2 AS
(
   SELECT employee_id, salary
   FROM Parks_and_Recreation.employee_salary
   WHERE salary>50000
)
SELECT * 
FROM CTE_example
JOIN CTE_example2 
    on CTE_example.employee_id=CTE_example2.employee_id
