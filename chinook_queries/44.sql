-- db_id: chinook_1
-- question: What city does the employee who helps the customer with postal code 70174 live in?
SELECT T2.City FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId WHERE T1.PostalCode  =  '70174'
