USE employees;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;



SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-24'
ORDER BY birth_date, hire_date;

SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-24'
ORDER BY birth_date, hire_date;