SELECT E.FirstName, E.EmployeeId AS SupportRepId
FROM Employee AS E
JOIN Customer AS C ON E.EmployeeId = C.SupportRepId
GROUP BY E.EmployeeId, E.FirstName
HAVING COUNT(C.CustomerId) >= 10
