SELECT T2.Name, T2.ArtistId
FROM Artist AS T2
JOIN Album AS T1 ON T1.ArtistId = T2.ArtistId
GROUP BY T2.ArtistId, T2.Name
HAVING COUNT(T1.AlbumId) >= 3
ORDER BY T2.Name;
