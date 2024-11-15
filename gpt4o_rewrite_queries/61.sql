SELECT AVG(Milliseconds) 
FROM TRACK 
WHERE GenreId IN (SELECT GenreId FROM GENRE WHERE Name IN ('Latin', 'Pop'))
