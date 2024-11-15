SELECT DISTINCT FirstName FROM Customer WHERE Country = 'Brazil' AND EXISTS (SELECT 1 FROM Invoice WHERE CustomerId = Customer.CustomerId)
