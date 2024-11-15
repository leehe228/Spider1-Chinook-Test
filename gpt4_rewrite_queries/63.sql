-- Optimized query focuses on improved readability and accurate aliasing
SELECT E.FirstName, C.SupportRepId 
FROM Employee E
JOIN Customer C ON C.SupportRepId = E.EmployeeId 
GROUP BY C.SupportRepId, E.FirstName 
HAVING COUNT(*) >= 10;
