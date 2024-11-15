-- Optimized Query for better JOIN performance and ensuring correct use of indexing on joined columns
SELECT DISTINCT C.FirstName
FROM Customer AS C
INNER JOIN Invoice AS I ON C.CustomerId = I.CustomerId
WHERE C.Country = 'Brazil';
