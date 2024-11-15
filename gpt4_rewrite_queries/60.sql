SELECT AVG(t.Milliseconds) 
FROM Track t
JOIN Genre g ON t.GenreId = g.GenreId 
WHERE g.Name IN ('Latin', 'Pop')
