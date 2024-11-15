SELECT AVG(T2.UnitPrice)
FROM Genre AS T1
JOIN Track AS T2 ON T1.GenreId = T2.GenreId
WHERE T1.Name = 'Rock'
