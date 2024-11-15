-- db_id: chinook_1
-- question: Find the average unit price of jazz tracks.
SELECT AVG(UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  'Jazz'
