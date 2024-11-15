SELECT COUNT(*) FROM Album AS T1 WHERE T1.ArtistId = (SELECT ArtistId FROM Artist WHERE Name = 'Metallica')
