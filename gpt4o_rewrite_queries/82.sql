SELECT a.Title
FROM Album a
JOIN Track t ON a.AlbumId = t.AlbumId
JOIN Genre g ON t.GenreId = g.GenreId
WHERE g.Name IN ('Reggae', 'Rock')
GROUP BY a.AlbumId, a.Title
HAVING COUNT(DISTINCT g.Name) = 2
