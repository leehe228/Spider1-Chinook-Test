SELECT a.Title, t.AlbumId
FROM Album a
JOIN Track t ON a.AlbumId = t.AlbumId
WHERE t.UnitPrice > 1
GROUP BY t.AlbumId, a.Title;
