-- db_id: chinook_1
-- question: Find the address of all customers that live in Germany and have invoice.
SELECT DISTINCT T1.Address FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T1.country  =  'Germany'
