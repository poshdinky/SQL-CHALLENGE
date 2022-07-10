SELECT last_name, first_name, sex
FROM Public."Employees" AS E
WHERE E.first_name = 'Hercules' and E.last_name LIKE 'B%'
