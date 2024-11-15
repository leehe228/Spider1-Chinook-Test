-- db_id: chinook_1
-- question: Cound the number of artists who have not released an album.
SELECT count(*) FROM ARTIST WHERE artistid NOT IN(SELECT artistid FROM ALBUM)
