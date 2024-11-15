SELECT E.FirstName, E.EmployeeId 
FROM Employee E 
JOIN Customer C ON E.EmployeeId = C.SupportRepId 
GROUP BY E.EmployeeId, E.FirstName 
HAVING COUNT(C.CustomerId) >= 10
