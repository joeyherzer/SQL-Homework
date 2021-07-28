CREATE TABLE departments (
dept_id int,
dept_name text
);

CREATE TABLE dept_emp (
emp_no int,
dept_no text
);

CREATE TABLE dept_manager (
dept_no text,
emp_no int
);

CREATE TABLE employees (
emp_no int,
emp_title_id text,
birth_date date,
first_name text,
last_name text,
sex text,
hire_date date
);

CREATE TABLE salaries (
emp_no int,
salary int
);

CREATE TABLE tites (
title_id text,
title text
);