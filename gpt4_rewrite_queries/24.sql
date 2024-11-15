-- The original query is efficient given its purpose; directly using aggregation functions without JOINs or subqueries.
SELECT MAX(Milliseconds) AS LongestDuration, MIN(Milliseconds) AS ShortestDuration FROM Track;
