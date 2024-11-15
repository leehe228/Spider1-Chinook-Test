SELECT Artist.Name 
FROM Artist 
JOIN Album ON Artist.ArtistId = Album.ArtistId 
WHERE Album.Title = 'Balls to the Wall';
