-- db_id: chinook_1
-- question: What are the names and ids of the different albums, and how many tracks are on each?
SELECT T1.Title ,  T2.AlbumID ,  COUNT(*) FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId  =  T2.AlbumId GROUP BY T2.AlbumID
