-- Optimized version using LEFT JOIN and IS NULL to avoid using NOT IN which can be slow with subqueries

SELECT COUNT(*) 
FROM Artist AS a 
LEFT JOIN Album AS al ON a.ArtistId = al.ArtistId 
WHERE al.AlbumId IS NULL;
