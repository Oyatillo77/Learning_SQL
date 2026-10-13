-- Window functions
USE Parks_and_Recreation;

SELECT gender, AVG(salary) AS avg_salary
from employee_demographics dem
JOIN employee_salary sal
        ON dem.employee_id = sal.employee_id
 GROUP BY gender;


    SELECT dem.first_name, dem.last_name,gender, salary,SUM(salary) 
    OVER(partition by gender ORDER BY dem.employee_id) As Rolling_Total
    From employee_demographics dem
    JOIN employee_salary sal
            ON dem.employee_id = sal.employee_id;

 

SELECT dem.first_name, dem.last_name,gender, salary ,
Row_number() over(Partition by gender ORDER BY salary DESC) as row_num,
Rank() over(Partition by gender ORDER BY salary DESC) as rank_num,
DENSE_RANK() over(Partition by gender ORDER BY salary DESC) as dense_rank_num
From employee_demographics dem
JOIN employee_salary sal
        ON dem.employee_id = sal.employee_id;