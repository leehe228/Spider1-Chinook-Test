SELECT MAX(t.Milliseconds) AS MaxMilliseconds, MIN(t.Milliseconds) AS MinMilliseconds
FROM Track t
JOIN Genre g ON t.GenreId = g.GenreId
WHERE g.Name = 'Pop';
