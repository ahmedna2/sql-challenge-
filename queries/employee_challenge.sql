--List the employee number, last name, first name, sex, and salary of each employee.
select * from t1
--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';
--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT employees.first_name,employees.last_name, departments.dept_name, dept_manager.dept_no, dept_manager.emp_no
FROM dept_manager
LEFT JOIN employees ON (dept_manager.emp_no = employees.emp_no)
LEFT JOIN departments ON (dept_manager.dept_no = departments.dept_no)
--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name,employees.first_name,departments.dept_name, departments.dept_no, dept_manager.dept_no
from dept_manager 
left join departments on (dept_manager.dept_no = departments.dept_no )
left join employees on (employees.emp_no = dept_manager.emp_no)
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name, last_name, sex from employees where first_name = 'Hercules' and last_name like 'B%'
--List each employee in the Sales department, including their employee number, last name, and first name
select * from employees
select * from dept_manager
select employees.first_name, employees.last_name, employees.emp_no, dept_manager.dept_no, dept_manager.emp_no
from dept_manager 
left join employees on (dept_manager.emp_no = employees.emp_no) where dept_no = 'd007'
--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employees.first_name, employees.last_name, employees.emp_no, dept_emp.emp_no, departments.dept_name
from dept_emp
left join employees on (dept_emp.emp_no = employees.emp_no) 
left join departments on (dept_emp.dept_no = departments.dept_no)
where dept_name = 'Development' or dept_name = 'Sales'

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(*) 
from employees
group by last_name
order by count desc 



  

