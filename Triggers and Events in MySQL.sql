-- Triggers and Events

SELECT * FROM employee_salary;

SELECT * FROM employee_demographics;

USE parks_and_recreation;
DELIMITER $$

CREATE TRIGGER employee_insert2
	AFTER INSERT ON employee_salary
    FOR EACH ROW
   
BEGIN
    INSERT INTO employee_demographics (employee_id, first_name, last_name) VALUES (NEW.employee_id,NEW.first_name,NEW.last_name);
END $$

DELIMITER ; 


INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES(13, 'Jean-Ralphio', 'Saperstein', 'Entertainment 720 CEO', 1000000, NULL);

DELETE FROM employee_salary
WHERE employee_id = 13;



SELECT * 
FROM parks_and_recreation.employee_demographics;

SHOW EVENTS;

DROP EVENT IF EXISTS delete_retirees;
DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND
DO BEGIN
	DELETE
	FROM parks_and_recreation.employee_demographics
    WHERE age >= 60;
END $$

SELECT * 
FROM parks_and_recreation.employee_demographics;