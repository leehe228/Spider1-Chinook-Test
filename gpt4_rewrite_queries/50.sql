-- Optimized query to find all the customer last names that do not have invoice totals larger than 20
SELECT LastName 
FROM Customer
WHERE CustomerId NOT IN (
    SELECT CustomerId 
    FROM Invoice 
    WHERE Total > 20
)
