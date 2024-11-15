-- This query optimally retrieves last names of employees who serve no more than 20 customers
SELECT E.LastName 
FROM Employee E
JOIN Customer C ON E.EmployeeId = C.SupportRepId
GROUP BY E.EmployeeId
HAVING COUNT(C.CustomerId) <= 20
