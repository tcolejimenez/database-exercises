--write a query that shows each department along with the name of the current manager for that department.
SELECT departments.dept_name AS 'Department Name',
  CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
  FROM departments
  JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
  JOIN employees ON employees.emp_no = dept_manager.emp_no
  WHERE dept_manager.to_date = '9999-01-01';




--Find the name of all departments currently managed by women.
SELECT departments.dept_name AS 'Departments Managed by Women',
       CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager',
       employees.gender AS Gender
  FROM departments
  JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
  JOIN employees ON employees.emp_no = dept_manager.emp_no
  WHERE employees.gender = 'F'
    AND dept_manager.to_date = '9999-01-01';



--Find the current titles of employees currently working in the Customer Service department.
SELECT titles.title, COUNT(titles.title) FROM titles
  JOIN dept_emp
    ON dept_emp.emp_no = titles.emp_no
  JOIN departments
    ON dept_emp.dept_no = departments.dept_no
  WHERE dept_emp.to_date = '9999-01-01'
      AND departments.dept_name = 'Customer Service'
  GROUP BY titles.title
  ORDER BY titles.title;




--Find the current salary of all current managers.
SELECT departments.dept_name AS Department,
       CONCAT(employees.first_name, ' ', employees.last_name) AS Name,
       salaries.salary AS Salary
  FROM departments
  JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
  JOIN employees ON employees.emp_no = dept_manager.emp_no
  JOIN salaries ON employees.emp_no = salaries.emp_no
 WHERE dept_manager.to_date = '9999-01-01'
  AND salaries.to_date = '9999-01-01'
ORDER BY departments.dept_name;





--Find the names of all current employees, their department name, and their current manager's name.
SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Employee Name'
FROM employees;


