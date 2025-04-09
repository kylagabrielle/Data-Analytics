-- WHERE Clause

SELECT *
FROM employee_salary
WHERE salary <= 50000
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;
-- AND OR NOT -- LOGICAL OPERATOR

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
or not gender = 'male'
;

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) or age > 55
;
-- like statement --
-- % = anything, _ = specific value--
SELECT *
FROM employee_demographics
Where birth_date like '1989%'
;




