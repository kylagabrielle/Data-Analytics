-- Group By

SELECT *
FROM employee_demographics;


SELECT gender, AVG(age), MAX(age), MAX(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

-- Order By
SELECT *
FROM employee_demographics
ORDER BY gender, age DESC;