-- db_id: chinook_1
-- question: What are the different first names for customers from Brazil who have also had an invoice?
SELECT DISTINCT T1.FirstName FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.country  =  'Brazil'
