SELECT DEPEMP.emp_no, EMP.last_name, EMP.first_name, DEP.dept_name
FROM Public."dept_emp" as DEPEMP
INNER JOIN Public."Departments" as DEP
ON DEPEMP.dept_no = DEP.dept_no
INNER JOIN Public."Employees" as EMP
ON EMP.emp_no = DEPEMP.emp_no