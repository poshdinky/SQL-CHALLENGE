SELECT E.last_name, COUNT(E.last_name) AS Frequency
FROM Public."Employees" AS E
GROUP BY E.last_name
ORDER BY COUNT(E.last_name) DESC
