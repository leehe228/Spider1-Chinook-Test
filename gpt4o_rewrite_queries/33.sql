SELECT DISTINCT T1.Title, T2.AlbumId FROM Album AS T1 JOIN Track AS T2 ON T1.AlbumId = T2.AlbumId WHERE T2.UnitPrice > 1
