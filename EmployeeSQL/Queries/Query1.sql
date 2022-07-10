SELECT e.emp_no,e.last_name,e.first_name,e.sex, s.salary
FROM public."Employees" as e
LEFT JOIN public."Salaries" as s
ON e.emp_no = s.emp_no
