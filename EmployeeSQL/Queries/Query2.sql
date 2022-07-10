SELECT first_name,last_name, hire_date
FROM public."Employees" 
WHERE date_part('year', hire_date) = 1986
