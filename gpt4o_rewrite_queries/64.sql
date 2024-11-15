SELECT T2.LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId = T2.EmployeeId GROUP BY T2.LastName HAVING COUNT(*) <= 20
