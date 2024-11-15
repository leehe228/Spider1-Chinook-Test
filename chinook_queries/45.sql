-- db_id: chinook_1
-- question: Find the cities corresponding to employees who help customers with the postal code 70174.
SELECT T2.City FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId WHERE T1.PostalCode  =  '70174'
