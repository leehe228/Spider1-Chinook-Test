-- db_id: chinook_1
-- question: What is the first name and last name employee helps the customer with first name Leonie?
SELECT T2.FirstName ,  T2.LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId WHERE T1.FirstName  =  'Leonie'
