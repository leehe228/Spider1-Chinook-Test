-- db_id: chinook_1
-- question: Count the number of tracks that are of the media type "AAC audio file".
SELECT COUNT(*) FROM MEDIATYPE AS T1 JOIN TRACK AS T2 ON T1.MediaTypeId  =  T2.MediaTypeId WHERE T1.Name  =  'AAC audio file'
