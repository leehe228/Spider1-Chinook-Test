SELECT COUNT(*) FROM Track AS T WHERE T.MediaTypeId = (SELECT MediaTypeId FROM MediaType WHERE Name = 'AAC audio file')
