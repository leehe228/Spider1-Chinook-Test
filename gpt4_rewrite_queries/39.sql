-- Using an index on the `Email` field if available would speed up the query. The original query is already efficient given it directly accesses the relevant row through the indexed field.

SELECT FirstName, LastName FROM Customer WHERE Email = 'luisg@embraer.com.br';
