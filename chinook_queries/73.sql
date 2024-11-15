-- db_id: chinook_1
-- question: Find the average unit price of tracks from the Rock genre.
SELECT AVG(T2.UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  'Rock'
