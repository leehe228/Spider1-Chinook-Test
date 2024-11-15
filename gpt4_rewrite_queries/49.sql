SELECT i.InvoiceDate 
FROM Customer c 
JOIN Invoice i ON c.CustomerId = i.CustomerId 
WHERE c.FirstName = 'Astrid' AND c.LastName = 'Gruber';
