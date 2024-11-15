SELECT T2.Name 
FROM ALBUM AS T1 
JOIN ARTIST AS T2 ON T1.ArtistId = T2.ArtistId 
GROUP BY T2.ArtistId 
ORDER BY COUNT(T1.AlbumId) DESC 
LIMIT 1