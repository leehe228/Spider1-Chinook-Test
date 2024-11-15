SELECT T1.Name 
FROM MediaType AS T1 
JOIN Track AS T2 ON T1.MediaTypeId = T2.MediaTypeId 
GROUP BY T1.MediaTypeId 
ORDER BY COUNT(T2.TrackId) ASC 
LIMIT 1;
