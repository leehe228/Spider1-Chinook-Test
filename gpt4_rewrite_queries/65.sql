-- We optimize the query by grouping on EmployeeId instead of Customer.SupportRepId since they should be equivalent
-- Also, explicitly select the LastName from the Employee table to reflect that we are interested in the employee details and not the customer's.
-- This expresses the intent of the query more accurately and may utilize indexes better, especially on the Employee table.

SELECT E.LastName
FROM Employee E
JOIN Customer C ON C.SupportRepId = E.EmployeeId
GROUP BY E.EmployeeId, E.LastName -- grouping by both to satisfy some SQL flavors' requirements
HAVING COUNT(*) <= 20
