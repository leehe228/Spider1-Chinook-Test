-- Use a left join to get better performance rather than NOT IN subquery, especially with indexes already set up on artistId in both tables.
SELECT COUNT(*) FROM Artist LEFT JOIN Album ON Artist.ArtistId = Album.ArtistId WHERE Album.AlbumId IS NULL;
