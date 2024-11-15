-- db_id: chinook_1
-- question: Find the full names of employees who help customers with the first name Leonie.
SELECT T2.FirstName ,  T2.LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId WHERE T1.FirstName  =  'Leonie'
