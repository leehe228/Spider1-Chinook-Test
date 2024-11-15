-- Utilizing created index on Artist(ArtistId) to efficiently filter by artist name
SELECT COUNT(*) 
FROM Album 
JOIN Artist 
ON Album.ArtistId = Artist.ArtistId 
WHERE Artist.Name = 'Metallica';
