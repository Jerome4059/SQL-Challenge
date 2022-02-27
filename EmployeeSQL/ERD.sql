Employees
-
emp_no INT PK
emp_title VARCHAR(30) FK >- Titles.title_id
birth_date DATE
first_name VARCHAR(30)
last_name VARCHAR(30)
sex VARCHAR(30)
hire_date DATE

Salaries
-
employee_no INT FK >- Employees.emp_no
salary INT PK

Titles
-
title_id VARCHAR(30) PK
title VARCHAR(30)

Department
-
dept_no VARCHAR(30) PK
dept_name VARCHAR(30)


Dept_Manager
-
dept_no VARCHAR(30) FK >- Department.dept_no
emp_no INT FK >- Employees.emp_no

Dept_Emp
-
emp_no INT FK >- Employees.emp_no
dept_no VARCHAR(30) FK >- Department.dept_no