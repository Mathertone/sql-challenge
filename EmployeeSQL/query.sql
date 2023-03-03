statu-- SELECT * FROM departments;
-- SELECT * FROM titles;
-- SELECT * FROM employees;
-- SELECT * FROM salaries;
-- SELECT * FROM dept_emp;
-- SELECT * FROM dept_manager;

-- SELECT employees.emp_no, last_name, first_name, sex, salary
-- FROM employees
-- LEFT JOIN salaries
-- ON employees.emp_no = salaries.emp_no
-- LIMIT 5;

-- SELECT first_name, last_name, hire_date
-- FROM employees
-- WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
-- LIMIT 5;

-- SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
-- FROM departments d
-- INNER JOIN dept_manager m ON d.dept_no = m.dept_no
-- INNER JOIN employees e ON m.emp_no = e.emp_no;

-- SELECT e.emp_no, e.last_name, e.first_name, de.dept_no, d.dept_name
-- FROM employees e
-- INNER JOIN dept_emp de ON e.emp_no = de.emp_no
-- INNER JOIN departments d ON de.dept_no = d.dept_no;

-- SELECT first_name, last_name, sex
-- FROM employees
-- WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- SELECT emp_no, last_name, first_name
-- FROM employees
-- WHERE emp_no IN (
--   SELECT emp_no FROM dept_emp WHERE dept_no = 'd007'
-- )
-- LIMIT 5;

-- SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
-- FROM employees e
-- INNER JOIN dept_emp de ON e.emp_no = de.emp_no
-- INNER JOIN departments d ON de.dept_no = d.dept_no
-- WHERE d.dept_no IN ('d007', 'd005')
-- LIMIT 5;

-- SELECT last_name, COUNT(*) as frequency
-- FROM employees
-- GROUP BY last_name
-- ORDER BY frequency DESC;