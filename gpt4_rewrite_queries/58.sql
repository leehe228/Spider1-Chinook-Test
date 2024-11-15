-- Optimize the query by utilizing the created index on MediaTypeId. 
-- Avoid using alias names that do not meaningfully describe the table or its contents.
-- No additional indices are added beyond provided schema, and indexes are efficiently used.

SELECT COUNT(*) 
FROM MediaType 
JOIN Track ON MediaType.MediaTypeId = Track.MediaTypeId 
WHERE MediaType.Name = 'AAC audio file';
