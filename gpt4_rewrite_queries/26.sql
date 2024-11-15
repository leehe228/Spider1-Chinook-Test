-- Optimized SQL query for showing album names, ids and the number of tracks for each album.
SELECT
    A.Title,
    A.AlbumId,
    COUNT(*) AS NumberOfTracks
FROM
    Album A
JOIN
    Track T ON A.AlbumId = T.AlbumId
GROUP BY
    A.AlbumId, A.Title;
