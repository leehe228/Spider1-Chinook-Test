-- Optimized query using NOT EXISTS to check exclusion based on the condition directly
SELECT LastName 
FROM Customer 
WHERE NOT EXISTS (
    SELECT 1 
    FROM Invoice
    WHERE Customer.CustomerId = Invoice.CustomerId 
    AND Invoice.Total > 20
);
