-- Rewritten query leveraging index on Track.GenreId for improved efficiency
SELECT COUNT(*) 
FROM Track 
WHERE GenreId = (SELECT GenreId FROM Genre WHERE Name = 'Rock');
