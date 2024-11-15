-- The original query is already very efficient as it has targeted only necessary columns and uses a direct filter on the WHERE clause.
SELECT FirstName, LastName FROM Employee WHERE City = 'Calgary';
