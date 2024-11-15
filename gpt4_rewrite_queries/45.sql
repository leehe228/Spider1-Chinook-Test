-- Optimized query for chinook database to find cities of employees who support customers with postal code 70174
SELECT DISTINCT e.City 
FROM Employee e 
JOIN Customer c ON e.EmployeeId = c.SupportRepId 
WHERE c.PostalCode = '70174'
