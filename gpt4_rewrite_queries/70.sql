-- Optimized query leveraging LEFT JOIN and WHERE to identify artists without albums
SELECT a.Name 
FROM Artist AS a 
LEFT JOIN Album AS al ON a.ArtistId = al.ArtistId 
WHERE al.AlbumId IS NULL;
