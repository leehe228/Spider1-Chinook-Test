SELECT E.FirstName, E.LastName 
FROM Customer C 
JOIN Employee E ON C.SupportRepId = E.EmployeeId 
WHERE C.FirstName = 'Leonie';
