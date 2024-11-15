SELECT T2.InvoiceDate 
FROM Customer AS T1 
JOIN Invoice AS T2 
ON T1.CustomerId = T2.CustomerId 
WHERE T1.FirstName = 'Astrid' 
AND T1.LastName = 'Gruber'
