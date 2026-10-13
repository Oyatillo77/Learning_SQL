SELECT * 
from Parks_and_Recreation.employee_demographics; 

SELECT first_name,last_name,birth_date,age,(age+10)*10+10
from Parks_and_Recreation.employee_demographics; 

SELECT DISTINCT gender
from Parks_and_Recreation.employee_demographics; 


SELECT * FROM Parks_and_Recreation.employee_salary
WHERE salary <=50000;


select * FROM Parks_and_Recreation.employee_demographics
    WHERE gender != "Female";


-- And or Not -- logical operator 

SELECT * FROM Parks_and_Recreation.employee_demographics
WHERE birth_date >"1985-01-01" and gender='male';

SELECT * FROM Parks_and_Recreation.employee_demographics
WHERE (first_name='Leslie' and age=44)or age>55;

-- like Statement -- % and _

Select * from Parks_and_Recreation.employee_demographics
where first_name like "A%";

-- Group by --

SELECT gender, AVG(age),MAX(age), MIN(age),Count(age)
from Parks_and_Recreation.employee_demographics 
GROUP BY gender;

-- Order By --
SELECT *
from Parks_and_Recreation.employee_demographics 
ORDER BY gender,age DESC;

-- where vs having --
SELECT gender, AVG(age) AS avg_age
from Parks_and_Recreation.employee_demographics 
GROUP BY gender
having  avg_age>40;

SELECT occupation, AVG(salary)
from Parks_and_Recreation.employee_salary
where occupation like '%manager%'
GROUP by occupation;


-- Limint --
SELECT * from Parks_and_Recreation.employee_demographics 
ORDER BY age DESC
LIMIT 2,1;









