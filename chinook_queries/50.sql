-- db_id: chinook_1
-- question: Find all the customer last names that do not have invoice totals larger than 20.
SELECT LastName FROM CUSTOMER EXCEPT SELECT T1.LastName FROM CUSTOMER AS T1 JOIN Invoice AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T2.total  >  20
