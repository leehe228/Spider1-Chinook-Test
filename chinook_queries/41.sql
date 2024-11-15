-- db_id: chinook_1
-- question: Count the number of customers that have an email containing "gmail.com".
SELECT COUNT(*) FROM CUSTOMER WHERE Email LIKE '%gmail.com%'
