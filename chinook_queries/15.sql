-- db_id: chinook_1
-- question: Find the number of albums by the artist "Metallica".
SELECT COUNT(*) FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T2.Name  =  'Metallica'
