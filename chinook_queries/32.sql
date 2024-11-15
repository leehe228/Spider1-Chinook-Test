-- db_id: chinook_1
-- question: Show the album names and ids for albums that contain tracks with unit price bigger than 1.
SELECT T1.Title ,  T2.AlbumID FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId  =  T2.AlbumId WHERE T2.UnitPrice  >  1 GROUP BY T2.AlbumID
