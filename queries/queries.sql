SELECT * FROM employees
SELECT * FROM titles
SELECT * FROM salaries
SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_managers



select employees.emp_no, employees.first_name,employees.last_name,employees.sex,salaries.salary
into t1
from employees
inner join salaries
on employees.emp_no = salaries.emp_no
select * from t1



