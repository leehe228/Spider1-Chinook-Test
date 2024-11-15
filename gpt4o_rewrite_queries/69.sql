SELECT T2.Name, T1.ArtistId
FROM Album AS T1
JOIN Artist AS T2 ON T1.ArtistId = T2.ArtistId
GROUP BY T1.ArtistId, T2.Name
HAVING COUNT(T1.AlbumId) >= 3
ORDER BY T2.Name
