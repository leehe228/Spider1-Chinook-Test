-- db_id: chinook_1
-- question: What are the durations of the longest and the shortest tracks in milliseconds?
SELECT max(Milliseconds) ,  min(Milliseconds) FROM TRACK
