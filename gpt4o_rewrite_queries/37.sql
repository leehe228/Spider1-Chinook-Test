SELECT AVG(UnitPrice) FROM Track WHERE GenreId = (SELECT GenreId FROM Genre WHERE Name = 'Jazz')
