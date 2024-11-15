SELECT LastName 
FROM Employee 
WHERE EmployeeId IN (
    SELECT SupportRepId 
    FROM Customer 
    GROUP BY SupportRepId 
    HAVING COUNT(*) <= 20
)
