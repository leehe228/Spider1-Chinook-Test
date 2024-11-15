-- Optimized query for finding the least common media type name across all tracks
SELECT MT.Name
FROM MediaType MT
JOIN Track T ON MT.MediaTypeId = T.MediaTypeId
GROUP BY MT.MediaTypeId, MT.Name
ORDER BY COUNT(*) ASC
LIMIT 1;
