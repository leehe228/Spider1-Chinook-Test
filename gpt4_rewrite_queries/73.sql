-- db_id: chinook_1
-- Optimized query for finding the average unit price of tracks from the Rock genre
SELECT AVG(t.UnitPrice) 
FROM Track t 
JOIN Genre g ON t.GenreId = g.GenreId 
WHERE g.Name = 'Rock';
