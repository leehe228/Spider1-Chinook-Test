SELECT DISTINCT C.Address 
FROM Customer C 
WHERE C.Country = 'Germany' 
AND EXISTS (SELECT 1 FROM Invoice I WHERE I.CustomerId = C.CustomerId)
