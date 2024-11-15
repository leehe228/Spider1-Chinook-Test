-- Optimized SQL query using logic grouping and indexing
SELECT 
    Artist.Name, 
    Album.ArtistId 
FROM 
    Album 
JOIN 
    Artist 
ON 
    Album.ArtistId = Artist.ArtistId 
GROUP BY 
    Album.ArtistId, 
    Artist.Name  -- added Artist.Name in GROUP BY clause for compatibility
HAVING 
    COUNT(*) >= 3 
ORDER BY 
    Artist.Name ASC;
