-- db_id: chinook_1
-- question: What are the invoice dates for customers with the first name Astrid and the last name Gruber?
SELECT T2.InvoiceDate FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.FirstName  =  'Astrid' AND LastName  =  'Gruber'
