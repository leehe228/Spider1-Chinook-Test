SELECT E.City 
FROM Employee E 
JOIN Customer C ON C.SupportRepId = E.EmployeeId 
WHERE C.PostalCode = '70174'
