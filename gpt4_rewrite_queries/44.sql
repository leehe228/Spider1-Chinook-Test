-- Using explicit INNER JOIN for clarity and leveraging indexed columns for join and where clause
SELECT E.City 
FROM Customer C 
INNER JOIN Employee E ON C.SupportRepId = E.EmployeeId 
WHERE C.PostalCode = '70174';
