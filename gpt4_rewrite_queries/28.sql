-- Optimized query to find the name of the most common genre in all tracks
SELECT G.Name
FROM Genre AS G
JOIN Track AS T ON G.GenreId = T.GenreId
GROUP BY G.GenreId, G.Name
ORDER BY COUNT(T.TrackId) DESC
LIMIT 1;
