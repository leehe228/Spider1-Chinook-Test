-- Optimized query to find the duration of the longest and shortest pop tracks in milliseconds
SELECT MAX(t.Milliseconds) AS LongestDuration, MIN(t.Milliseconds) AS ShortestDuration
FROM Genre g
JOIN Track t ON g.GenreId = t.GenreId
WHERE g.Name = 'Pop';
