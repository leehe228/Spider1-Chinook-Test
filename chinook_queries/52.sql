-- db_id: chinook_1
-- question: Find the first names of all customers that live in Brazil and have an invoice.
SELECT DISTINCT T1.FirstName FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.country  =  'Brazil'
