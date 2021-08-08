-- DELIVERABLE 1
-- Create Retirement Titles table
SELECT 
	e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO Retirement_Titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- Create Unique Titles Table
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.from_date  DESC;

-- Create table with employee count by most recent title
SELECT COUNT(ut.emp_no), ut.title
--INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title 
ORDER BY (count) DESC;

Drop table retiring_titles;

-- Create table with employee count by most recent title
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title 
ORDER BY (count) DESC;


-- Deliverable 2 
-- Create a mentorship-eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (ti.to_date = '9999-01-01')
ORDER BY emp_no;

-- Deliverable 3
-- Create a mentorship-eligibility table for non-retiring employees 
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility_non_retiring
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (de.from_date BETWEEN '1985-01-01' AND '1994-12-31')
AND (ti.to_date = '9999-01-01')
ORDER BY emp_no;
