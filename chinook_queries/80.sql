-- db_id: chinook_1
-- question: How many artists do not have any album?
SELECT count(*) FROM ARTIST WHERE artistid NOT IN(SELECT artistid FROM ALBUM)
