-- db_id: chinook_1
-- question: How many tracks are in the AAC audio file media type?
SELECT COUNT(*) FROM MEDIATYPE AS T1 JOIN TRACK AS T2 ON T1.MediaTypeId  =  T2.MediaTypeId WHERE T1.Name  =  'AAC audio file'
