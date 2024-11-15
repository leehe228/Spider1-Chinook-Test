SELECT A.Name 
FROM Artist AS A 
JOIN Album AS B ON A.ArtistId = B.ArtistId 
WHERE B.Title = 'Balls to the Wall'
