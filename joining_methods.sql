 -- Inner Join -- 
 Select dem.employee_id, age,occupation
     from Parks_and_Recreation.employee_demographics as dem 
     inner join Parks_and_Recreation.employee_salary as sal 
        On dem.employee_id = sal.employee_id;



 -- outer Join -- 
 Select *
     from Parks_and_Recreation.employee_demographics as dem 
     Right join Parks_and_Recreation.employee_salary as sal 
        On dem.employee_id = sal.employee_id;
     
 -- Self  Join -- 
 Select emp1.employee_id as emp_santa,
     emp1.first_name as first_name_santa,
     emp1.last_name as last_name_santa,
     emp2.employee_id as emp_name,
     emp2.first_name as first_name_emp,
     emp2.last_name as last_name_emp
     from Parks_and_Recreation.employee_salary emp1
     JOIN Parks_and_Recreation.employee_salary emp2
        ON emp1.employee_id+1 = emp2.employee_id;


SELECT *
from Parks_and_Recreation.employee_demographics as dem
    INNER join Parks_and_Recreation.employee_salary as sal
      on dem.employee_id = sal.employee_id
    INNER Join Parks_and_Recreation.parks_departments AS pd
      on sal.dept_id = pd.department_id;


SELECT FIRST_name, last_name
    from Parks_and_Recreation.employee_demographics
    UNION ALL
    SELECT FIRST_name, last_name
    FROM Parks_and_Recreation.employee_salary;

SELECT first_name, last_name,'Old man' as label
    FROM Parks_and_Recreation.employee_demographics
    WHERE age>40 and gender="Male"
UNION
SELECT first_name, last_name,'Old man' as label
    FROM Parks_and_Recreation.employee_demographics
    WHERE age>40 and gender="famale"
UNION 
SELECT first_name, last_name,'Higly paid employee' as label
FROM Parks_and_Recreation.employee_salary
    WHERE salary>70000
    ORDER BY first_name,last_name;


SELECT dem.first_name, dem.last_name,sal.salary,dem.age, "old and high paid" as label
    FROM Parks_and_Recreation.employee_demographics as dem
    JOIN Parks_and_Recreation.employee_salary as sal
    on dem.employee_id = sal.employee_id
    where dem.age >40 and sal.salary>50000
    ORDER BY first_name,last_name, salary,age;



 