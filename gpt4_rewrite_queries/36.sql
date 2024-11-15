-- Optimized query for calculating the average unit price of tracks in the Jazz genre
SELECT AVG(T.UnitPrice) 
FROM Track AS T 
JOIN Genre AS G ON T.GenreId = G.GenreId 
WHERE G.Name = 'Jazz';
