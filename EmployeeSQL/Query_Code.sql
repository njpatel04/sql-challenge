--Query Tables
--1) List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex,
	   s.salary
FROM employees e
LEFT JOIN salaries s
ON e.emp_no = s.emp_no

--2) List first name, last name, and hire date for employees who were hired in 1986.

SELECT * FROM employees

SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE DATE_PART('year', e.hire_date) = 1986;

--3) List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, 
	   e.last_name, e.first_name
FROM dept_managers dm
LEFT JOIN departments d
ON dm.dept_no = d.dept_no
LEFT JOIN employees e
ON dm.emp_no = e.emp_no;

--4) List the department of each employee with the following information: employee number, 
--last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name,
	   dm.dept_name
FROM employees e
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments dm
ON dm.dept_no = de.dept_no;

-- 5) List first name, last name, and sex for employees whose first name is 
--"Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE e.first_name = 'Hercules'
AND e.last_name LIKE 'B%'

--6) List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name,
	   d.dept_name
FROM employees e
LEFT JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--7) List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name,
	   d.dept_name
FROM employees e
LEFT JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

--8) In descending order, list the frequency count of employee last names,
--i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS Frequency
FROM employees
GROUP BY last_name
ORDER BY Frequency DESC;


