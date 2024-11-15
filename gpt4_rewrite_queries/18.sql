-- This query is optimized to use an efficient join on the indexed ArtistId column and avoids using table aliases that do not enhance readability in this simple case.
SELECT Artist.Name
FROM Artist
JOIN Album ON Album.ArtistId = Artist.ArtistId
GROUP BY Artist.Name
ORDER BY COUNT(*) DESC
LIMIT 1;
