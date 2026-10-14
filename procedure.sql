
-- CREATE PROCEDURE large_salaries()
-- SELECT * from employee_salary
-- WHERE salary>=50000;

CALL large_salaries();

-- DELIMITER $$
-- CREATE PROCEDURE large_salaries3()
-- BEGIN
--     SELECT * FROM employee_salary
--     WHERE salary >= 50000;
--     SELECT * FROM employee_salary
--     WHERE salary >= 10000;
-- END $$
--     DELIMITER ;


-- DELIMITER $$
-- CREATE PROCEDURE large_salaries4(chosen_id INT)
-- BEGIN
--     SELECT salary FROM employee_salary
--     where employee_id=chosen_id;
-- END $$
--     DELIMITER ;

CREATE PROCEDURE large_salaries5(chosen_id INT)
SELECT salary FROM employee_salary
WHERE employee_id = chosen_id;

CALL large_salaries3();

call large_salaries4(1)


