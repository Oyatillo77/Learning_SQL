SELECT first_name, last_name,age,
    Case 
        when age<=30  then "Young"
        WHEN age<50 then "Older"
        WHEN age>50 then "The oldests"
        end as Ages
    FROM Parks_and_Recreation.employee_demographics;

    -- Pay increase and Bonus
    -- < 50000 = 5%
    -- >50000=7%
    -- Finance =10% bonus 

    SELECT first_name,last_name,salary,
        CASE
        WHEN salary < 50000 THEN salary * 0.05
        WHEN salary >= 50000 THEN salary * 0.07
    END AS raise_amount,
    CASE
        when salary<50000 then salary*1.05 
        when salary >=50000 then salary*1.07
    END as New_salary
    FROM Parks_and_Recreation.employee_salary