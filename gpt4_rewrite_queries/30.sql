-- db_id: chinook_1
-- question: What is the least common media type in all tracks?
SELECT mt.Name 
FROM MediaType AS mt
JOIN Track AS t ON mt.MediaTypeId = t.MediaTypeId 
GROUP BY mt.MediaTypeId, mt.Name
ORDER BY COUNT(*) ASC 
LIMIT 1;
