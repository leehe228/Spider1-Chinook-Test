-- Optimized Query: Joining Customer to Employee on SupportRepId, selecting Employee details, grouping by EmployeeId to aggregate customer count per employee, specifically targeting employees supporting ≥10 customers.
SELECT E.FirstName, E.EmployeeId
FROM Employee E 
JOIN Customer C ON E.EmployeeId = C.SupportRepId
GROUP BY E.EmployeeId, E.FirstName
HAVING COUNT(*) >= 10
