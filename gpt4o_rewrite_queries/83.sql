SELECT Title
FROM Album
WHERE AlbumId IN (
    SELECT T.AlbumId
    FROM Track T
    JOIN Genre G ON T.GenreId = G.GenreId
    WHERE G.Name IN ('Reggae', 'Rock')
    GROUP BY T.AlbumId
    HAVING COUNT(DISTINCT G.Name) = 2
)
