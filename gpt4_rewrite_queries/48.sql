SELECT i.InvoiceDate 
FROM Customer AS c 
JOIN Invoice AS i ON c.CustomerId = i.CustomerId 
WHERE c.FirstName = 'Astrid' AND c.LastName = 'Gruber';
