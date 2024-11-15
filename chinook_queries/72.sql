-- db_id: chinook_1
-- question: What is the average unit price of rock tracks?
SELECT AVG(T2.UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  'Rock'
