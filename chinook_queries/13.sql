-- db_id: chinook_1
-- question: What are the titles of albums by the artist "AC/DC"?
SELECT Title FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T2.Name  =  'AC/DC'
