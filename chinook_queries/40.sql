-- db_id: chinook_1
-- question: How many customers have email that contains "gmail.com"?
SELECT COUNT(*) FROM CUSTOMER WHERE Email LIKE '%gmail.com%'
