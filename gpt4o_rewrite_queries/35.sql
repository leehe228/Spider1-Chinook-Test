SELECT COUNT(*) FROM Track WHERE GenreId = (SELECT GenreId FROM Genre WHERE Name = 'Rock')
