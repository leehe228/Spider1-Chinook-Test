-- db_id: chinook_1
-- question: What is the average duration in milliseconds of tracks that belong to Latin or Pop genre?
SELECT AVG(Milliseconds) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  'Latin' OR T1.Name  =  'Pop'
