-- Optimized query to retrieve album names and ids for albums containing tracks with a unit price greater than 1
SELECT a.AlbumId, a.Title
FROM Album a
JOIN Track t ON a.AlbumId = t.AlbumId
WHERE t.UnitPrice > 1
GROUP BY a.AlbumId, a.Title;
