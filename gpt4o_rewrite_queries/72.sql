SELECT AVG(T.UnitPrice) 
FROM Track AS T 
JOIN Genre AS G ON G.GenreId = T.GenreId 
WHERE G.Name = 'Rock';
