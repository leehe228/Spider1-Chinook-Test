-- The query is already efficient and simple with a direct WHERE clause filtering on indexed column "Email".
SELECT FirstName, LastName FROM Customer WHERE Email = 'luisg@embraer.com.br';
