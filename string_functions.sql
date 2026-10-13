-- String functions 

Select LENGTH('SkyFall');

SELECT first_name, LENGTH(first_name)
    FROM Parks_and_Recreation.employee_demographics
    ORDER BY 2;

SELECT UPPER("oyatillo");
SELECT LOWER("OYATILLO");

SELECT first_name, UPPER(first_name) as Upper_name
    FROM Parks_and_Recreation.employee_demographics
    ORDER BY 2; 

SELECT RTRIM("        Sky") as label ;

SELECT first_name,
    left(first_name,4),
    right(first_name,4), 
    substring(first_name,3,2),
    birth_date,
    SUBSTRING(birth_date,6,2) as birth_month
    FROM Parks_and_Recreation.employee_demographics;

SELECT first_name, Replace(first_name,'e','z')
    FROM Parks_and_Recreation.employee_demographics;

SELECT LOCATE('X',"Alexander");

SELECT first_name,last_name,
    concat(first_name, ' ', last_name) as fullname
    FROM Parks_and_Recreation.employee_demographics;


