SELECT e.FirstName, e.LastName 
FROM Customer c 
JOIN Employee e ON c.SupportRepId = e.EmployeeId 
WHERE c.FirstName = 'Leonie';
