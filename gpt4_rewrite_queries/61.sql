-- Optimized query by using an IN clause instead of multiple OR conditions
SELECT AVG(Milliseconds) 
FROM Genre 
JOIN Track ON Genre.GenreId = Track.GenreId 
WHERE Genre.Name IN ('Latin', 'Pop');
