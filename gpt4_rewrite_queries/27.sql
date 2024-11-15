SELECT Album.Title, Album.AlbumId, COUNT(Track.TrackId) AS NumberOfTracks
FROM Album
JOIN Track ON Album.AlbumId = Track.AlbumId
GROUP BY Album.AlbumId, Album.Title;
