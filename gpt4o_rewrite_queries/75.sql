SELECT MAX(T2.Milliseconds), MIN(T2.Milliseconds) 
FROM Track AS T2 
JOIN Genre AS T1 ON T1.GenreId = T2.GenreId 
WHERE T1.Name = 'Pop';
