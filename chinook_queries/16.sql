-- db_id: chinook_1
-- question: Which artist does the album "Balls to the Wall" belong to?
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T1.Title  =  'Balls to the Wall'
