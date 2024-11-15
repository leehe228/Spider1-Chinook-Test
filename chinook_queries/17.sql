-- db_id: chinook_1
-- question: Find the name of the artist who made the album "Balls to the Wall".
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T1.Title  =  'Balls to the Wall'
