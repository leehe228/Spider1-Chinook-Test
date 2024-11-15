-- Optimized SQL using correct casing and leveraging the indexing on foreign keys
SELECT DISTINCT Customer.Address 
FROM Customer 
JOIN Invoice 
ON Customer.CustomerId = Invoice.CustomerId 
WHERE Customer.Country = 'Germany';
