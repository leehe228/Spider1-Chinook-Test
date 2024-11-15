SELECT MAX(T2.Milliseconds), MIN(T2.Milliseconds)
FROM Track AS T2
WHERE T2.GenreId = (SELECT GenreId FROM Genre WHERE Name = 'Pop')
