-- Optimized query using LEFT JOIN and IS NULL to directly identify artists without any albums
SELECT a.Name 
FROM Artist a 
LEFT JOIN Album al ON a.ArtistId = al.ArtistId
WHERE al.AlbumId IS NULL;
