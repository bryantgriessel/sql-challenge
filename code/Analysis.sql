-----------Analysis 1 -------------
SELECT employees.emp_no, last_name, first_name,sex,salaries.salary FROM employees
FULL JOIN salaries ON employees.emp_no=salaries.emp_no;

-----------Analysis 2 -------------

SELECT hire_date, first_name, last_name FROM employees
WHERE DATE_PART('year',hire_date)='1986';

-----------Analysis 3 -------------
SELECT dept_manager.dept_no,departments.dept_name,dept_manager.emp_no,employees.last_name,employees.first_name  FROM dept_manager
Left JOIN employees ON employees.emp_no=dept_manager.emp_no 
JOIN departments ON departments.dept_no=dept_manager.dept_no;

-----------Analysis 4 -------------
SELECT dept_emp.dept_no,employees.emp_no,employees.last_name,employees.first_name,departments.dept_name  FROM dept_emp
Left JOIN employees ON employees.emp_no=dept_emp.emp_no 
JOIN departments ON departments.dept_no=dept_emp.dept_no;

-----------Analysis 5 -------------
SELECT last_name,first_name,sex  FROM employees
WHERE LOWER(first_name) ='hercules' AND LOWER(last_name) LIKE 'b%';

-----------Analysis 6 -------------
SELECT last_name,first_name,employees.emp_no  FROM dept_emp
Left JOIN employees ON employees.emp_no=dept_emp.emp_no 
WHERE dept_no = 'd007';

-----------Analysis 7 -------------
SELECT last_name,first_name,employees.emp_no,departments.dept_name  FROM dept_emp
Left JOIN employees ON employees.emp_no=dept_emp.emp_no 
JOIN departments ON departments.dept_no=dept_emp.dept_no 
WHERE dept_emp.dept_no = 'd007' OR dept_emp.dept_no = 'd005';

-----------Analysis 8 -------------
SELECT last_name,count(last_name)  FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name)DESC;


