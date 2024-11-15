WITH MediaTypeCount AS (
    SELECT MediaTypeId, COUNT(*) AS TrackCount
    FROM Track
    GROUP BY MediaTypeId
)
SELECT M.Name
FROM MediaType AS M
JOIN MediaTypeCount AS MC ON M.MediaTypeId = MC.MediaTypeId
ORDER BY MC.TrackCount ASC
LIMIT 1
