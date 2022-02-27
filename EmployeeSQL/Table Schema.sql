CREATE TABLE titles (
title_id VARCHAR(30) NOT NULL,
title VARCHAR(30) NOT NULL,
PRIMARY KEY(title_id))

CREATE TABLE department(
dept_no VARCHAR(30) NOT NULL,
dept_name VARCHAR(30) NOT NULL,
PRIMARY KEY(dept_no))

CREATE TABLE employees (
emp_no INT NOT NULL,
emp_title VARCHAR(30) NOT NULL,
birth_date DATE,
first_name VARCHAR(30) NOT Null,
last_name VARCHAR(30) NOT NULL,
sex VARCHAR(30) NOT NULL,
hire_date DATE,
PRIMARY KEY(emp_no),
FOREIGN KEY (emp_title) REFERENCES titles(title_id)
)

CREATE TABLE salaries (
employee_no INT NOT NULL,
salary INT NOT NULL,
FOREIGN KEY (employee_no) REFERENCES employees(emp_no))


CREATE TABLE dept_manager(
dept_no VARCHAR(30),
emp_no INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES department(dept_no))

CREATE TABLE dept_emp(
emp_no INT,
dept_no VARCHAR(30),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES department(dept_no))


