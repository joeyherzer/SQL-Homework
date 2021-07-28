--List the following details of each employee: employee number, last name, first name, sex, and salary.

select a.emp_no, a.last_name, a.first_name, a.sex, b.salary
from public.employees a 
	inner join public.salaries b
	on a.emp_no = b.emp_no


--List first name, last name, and hire date for employees who were hired in 1986.

select a.first_name, a.last_name, a.hire_date
from public.employees a 
	where hire_date > '12/31/1985'
	and hire_date < '1/1/1987'


--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT a.dept_id, a.dept_name, b.emp_no, c.last_name, c.first_name
FROM departments a 
JOIN dept_manager b
ON a.dept_id = b.dept_no
JOIN employees c
ON b.emp_no = c.emp_no;


--List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT a.emp_no, b.last_name, b.first_name, c.dept_name
FROM dept_emp a 
JOIN employees b
ON a.emp_no = b.emp_no
JOIN departments c
ON a.dept_no = c.dept_id;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT a.emp_no, b.last_name, b.first_name, c.dept_name
FROM dept_emp a 
JOIN employees b
ON a.emp_no = b.emp_no
JOIN departments c
ON a.dept_no = c.dept_id
WHERE c.dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT a.emp_no, b.last_name, b.first_name, c.dept_name
FROM dept_emp a 
JOIN employees b
ON a.emp_no = b.emp_no
JOIN departments c
ON a.dept_no = c.dept_id
WHERE c.dept_name in ('Sales','Development');


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
