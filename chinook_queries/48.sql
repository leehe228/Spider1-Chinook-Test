-- db_id: chinook_1
-- question: Find all invoice dates corresponding to customers with first name Astrid and last name Gruber.
SELECT T2.InvoiceDate FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.FirstName  =  'Astrid' AND LastName  =  'Gruber'
