-- Optimized query for finding the average unit price of jazz tracks
SELECT AVG(UnitPrice) AS AverageUnitPrice
FROM Track 
JOIN Genre 
  ON Genre.GenreId = Track.GenreId
WHERE Genre.Name = 'Jazz';
