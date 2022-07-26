-- Deliverable 1

-- Retrieve emp_no, first_name, and last_name.
SELECT emp_no, first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31');

-- Retrieve title, from_date, to_date.
SELECT emp_no, title, from_date, to_date
FROM titles;

-- Create a new table using INTO clause.
-- Join tables on the primary key and filter on birth_date
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO emp_from_to
FROM employees as e
RIGHT JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

-- Retrieve emp_no, first_name, last_name, title
SELECT emp_no, first_name, last_name, title
FROM emp_from_to;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO retire_titles
FROM emp_from_to
WHERE to_date = '9999-01-01'
ORDER BY emp_no, from_date DESC;

-- Retrieve number of titles
SELECT title, COUNT(title) AS "count"
INTO retire_titles_count
FROM retire_titles
GROUP BY title
ORDER BY count DESC;


-- Deliverable 2

-- Retrieve from employee table
SELECT emp_no, first_name, last_name, birth_date
FROM employees;

-- Retrieve from dept_emp table
SELECT from_date, to_date
FROM dept_emp;

-- Retrieve from titles table
SELECT title
FROM titles;

-- Create table for mentorship eligibility
SELECT DISTINCT ON(emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title

INTO mentorship
FROM employees as e
	LEFT JOIN dept_emp as de
		ON e.emp_no = de.emp_no	
	LEFT JOIN titles as t
		ON e.emp_no = t.emp_no
		ORDER BY emp_no, from_date DESC;

-- Create eligibility table
SELECT *
INTO mentor_eligible
FROM mentorship
WHERE (to_date = '9999-01-01')
AND (birth_date BETWEEN '1965-01-01' AND ' 1965-12-31');
