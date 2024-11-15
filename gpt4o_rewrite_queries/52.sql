SELECT DISTINCT C.FirstName 
FROM Customer C 
WHERE C.Country = 'Brazil' 
AND EXISTS (
    SELECT 1 
    FROM Invoice I 
    WHERE I.CustomerId = C.CustomerId
)
