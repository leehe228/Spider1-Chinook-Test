-- The provided query can be optimized by leveraging the indexing on the CustomerId in both the Customer and Invoice tables to speed up the join operation.
-- Additionally, since the DISTINCT keyword can add overhead by checking for duplicate addresses, it might be beneficial to evaluate if duplicates
-- can occur and possibly whether they could be avoided by a logical understanding of the database or context. However, without such specifics,
-- the DISTINCT operation remains.

SELECT DISTINCT c.Address 
FROM Customer AS c 
JOIN Invoice AS i ON c.CustomerId = i.CustomerId 
WHERE c.Country = 'Germany';
