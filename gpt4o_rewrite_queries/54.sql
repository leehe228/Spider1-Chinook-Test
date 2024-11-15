SELECT DISTINCT T1.Address 
FROM Customer AS T1 
WHERE T1.Country = 'Germany' AND EXISTS (
    SELECT 1 
    FROM Invoice AS T2 
    WHERE T1.CustomerId = T2.CustomerId
)
