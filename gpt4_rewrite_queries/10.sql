-- Utilize the indexed artist names and use ILIKE for case-insensitive search to improve performance where possible
SELECT Name FROM Artist WHERE Name ILIKE '%a%'
