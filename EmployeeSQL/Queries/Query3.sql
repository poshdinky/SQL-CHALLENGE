SELECT dm.dept_no, dep.dept_name, emp.emp_no, emp.last_name, emp.first_name
FROM Public."dept_manager" as dm
INNER JOIN Public."Departments" as dep
ON dm.dept_no = dep.dept_no
INNER JOIN Public."Employees" as emp
ON emp.emp_no = dm.emp_no