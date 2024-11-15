-- db_id: chinook_1
-- question: What are the duration of the longest and shortest pop tracks in milliseconds?
SELECT max(Milliseconds) ,  min(Milliseconds) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId  =  T2.GenreId WHERE T1.Name  =  'Pop'
