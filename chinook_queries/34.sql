-- db_id: chinook_1
-- question: How many tracks belong to rock genre?
SELECT COUNT(*) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  'Rock'
