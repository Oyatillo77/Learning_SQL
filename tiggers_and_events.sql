SELECT * FROM employee_demographics;

-- CREATE TRIGGER employee_insert
--     AFTER INSERT on employee_salary
--     FOR EACH ROW
--     INSERT INTO employee_demographics(employee_id,first_name,last_name)
--     VALUES(New.employee_id,new.first_name,new.last_name);


INSERT into employee_salary(employee_id,first_name,last_name,occupation,salary,dept_id)
VALUES(13,"Tohir","Akbarov","Entertainment 720 CEO", 100000,null);




CREATE EVENT delete_retires11
ON SCHEDULE EVERY 30 SECOND
DO 
    DELETE 
    FROM employee_demographics
    WHERE age>= 60;









