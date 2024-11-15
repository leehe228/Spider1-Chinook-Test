SELECT T1.Title, T1.AlbumId, COUNT(*) 
FROM Album AS T1 
JOIN Track AS T2 ON T1.AlbumId = T2.AlbumId 
GROUP BY T1.Title, T1.AlbumId
