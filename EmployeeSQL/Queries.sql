--DATA ANALYSIS


SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s 
ON(e.emp_no = s.employee_no);


SELECT first_name, last_name, hire_date
FROM employees
WHERE DATE_PART('year', hire_date) = 1986 ; 


SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name  
FROM employees e
JOIN dept_manager m
ON (m.emp_no = e.emp_no)
JOIN department d
ON (d.dept_no = m.dept_no);


SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON (de.emp_no = e.emp_no)
JOIN department d
ON (de.dept_no = d.dept_no)


SELECT first_name, last_name
FROM employees
WHERE first_name LIKE '%Hercules%' AND
last_name LIKE 'B%';


SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON (de.emp_no = e.emp_no)
JOIN department d
ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales';


SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON (de.emp_no = e.emp_no)
JOIN department d
ON (de.dept_no = d.dept_no)
WHERE d.dept_name IN ('Sales','Development');


SELECT last_name, COUNT(last_name) as "shared last name"
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;