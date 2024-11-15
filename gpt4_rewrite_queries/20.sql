-- Leveraging the index IFK_TrackAlbumId for a potential benefit in searching, though the actual effectiveness would depend on the specifics of data and database engine optimizations.
SELECT Name FROM Track WHERE Name LIKE '%you%'
