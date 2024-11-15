-- Optimized SQL query for finding the artist with the greatest number of albums
SELECT A.Name
FROM Artist A
JOIN Album AL ON A.ArtistId = AL.ArtistId
GROUP BY A.Name
ORDER BY COUNT(AL.AlbumId) DESC
LIMIT 1;
