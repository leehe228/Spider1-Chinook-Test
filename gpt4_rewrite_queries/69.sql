SELECT a.Name, a.ArtistId
FROM Artist AS a
JOIN Album AS b ON a.ArtistId = b.ArtistId
GROUP BY a.ArtistId, a.Name
HAVING COUNT(*) >= 3
ORDER BY a.Name;
