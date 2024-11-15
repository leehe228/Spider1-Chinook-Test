-- Applying optimization by avoiding alias as it's unnecessary and using explicit JOIN
SELECT Album.Title 
FROM Album
JOIN Artist ON Album.ArtistId = Artist.ArtistId 
WHERE Artist.Name = 'AC/DC';
