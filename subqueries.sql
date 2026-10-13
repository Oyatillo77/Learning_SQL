-- subqueries 
USE Parks_and_Recreation;

SELECT * from 
employee_demographics
where employee_id IN (
    SELECT employee_id from 
    Parks_and_Recreation.employee_salary
    WHERE dept_id=1
);

SELECT first_name,salary,
(Select Avg(salary)from Parks_and_Recreation.employee_salary)
FROM Parks_and_Recreation.employee_salary;

SELECT AVG(min_age)
FROM(
SELECT gender, AVG(age) AS avg_age,
 MIN(age) AS min_age,
 Max(age) AS max_age
 ,Count(age) AS count_age
FROM employee_demographics GROUP by gender) AS Agg_table;