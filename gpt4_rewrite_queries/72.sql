-- Optimized query for calculating the average unit price of rock tracks
SELECT AVG(t.UnitPrice) 
FROM Track t 
JOIN Genre g ON t.GenreId = g.GenreId 
WHERE g.Name = 'Rock';
