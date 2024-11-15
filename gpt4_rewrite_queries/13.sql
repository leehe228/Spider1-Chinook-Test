-- Optimized query for retrieving album titles by artist "AC/DC"
SELECT Title 
FROM Album 
JOIN Artist 
ON Album.ArtistId = Artist.ArtistId 
WHERE Artist.Name = 'AC/DC';
