SELECT E.emp_no, E.last_name, E.first_name, D.dept_name
FROM Public."Employees" AS E
INNER JOIN Public."dept_emp" AS DE
ON DE.emp_no = E.emp_no
INNER JOIN Public."Departments" AS D
ON DE.dept_no = D.dept_no
WHERE D.dept_name = 'Development' OR D.dept_name = 'Sales'