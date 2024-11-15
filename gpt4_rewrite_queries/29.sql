-- Optimized query using existing indexes and minimal joins
SELECT g.Name 
FROM Genre g
JOIN Track t ON g.GenreId = t.GenreId
GROUP BY g.GenreId, g.Name
ORDER BY COUNT(t.TrackId) DESC
LIMIT 1;
