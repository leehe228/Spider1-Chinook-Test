-- Optimized SQL query leveraging indexing and filtering early in the JOIN
SELECT DISTINCT c.FirstName
FROM Customer AS c
INNER JOIN Invoice AS i ON c.CustomerId = i.CustomerId
WHERE c.Country = 'Brazil';
