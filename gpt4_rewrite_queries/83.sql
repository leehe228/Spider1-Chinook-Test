SELECT T1.Title 
FROM Album AS T1 
JOIN Track AS T2 ON T1.AlbumId = T2.AlbumId 
JOIN Genre AS T3 ON T2.GenreId = T3.GenreId
WHERE T3.Name = 'Reggae'
AND EXISTS (
    SELECT 1 
    FROM Track AS T4
    JOIN Genre AS T5 ON T4.GenreId = T5.GenreId
    WHERE T5.Name = 'Rock' 
    AND T4.AlbumId = T1.AlbumId
)
