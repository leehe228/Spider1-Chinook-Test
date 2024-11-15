-- Optimized query to count the number of tracks for the "AAC audio file" media type.
SELECT COUNT(*) 
FROM Track AS T 
JOIN MediaType AS M ON T.MediaTypeId = M.MediaTypeId
WHERE M.Name = 'AAC audio file';
