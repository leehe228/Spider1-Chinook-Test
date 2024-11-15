-- Using explicit join types and proper aliasing can make the query clearer
-- and potentially more efficient for some SQL engines
SELECT e.FirstName, e.LastName
FROM Customer AS c
JOIN Employee AS e ON c.SupportRepId = e.EmployeeId
WHERE c.FirstName = 'Leonie';
