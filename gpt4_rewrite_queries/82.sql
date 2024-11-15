SELECT T1.Title 
FROM Album AS T1 
JOIN Track AS T2 ON T1.AlbumId = T2.AlbumId 
JOIN Genre AS T3 ON T2.GenreId = T3.GenreId 
WHERE T3.Name IN ('Reggae', 'Rock')
GROUP BY T1.Title 
HAVING COUNT(DISTINCT T3.Name) = 2
