USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'Name' FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;

SELECT *, DATEDIFF(CURDATE(), hire_date) AS 'Days employed' FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-24'
ORDER BY birth_date, hire_date;

