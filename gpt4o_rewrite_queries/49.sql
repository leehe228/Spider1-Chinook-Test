SELECT InvoiceDate FROM Invoice WHERE CustomerId = (SELECT CustomerId FROM Customer WHERE FirstName = 'Astrid' AND LastName = 'Gruber')
