--List all users wit their orders

SELECT u.username, o.order_id, o.order_date
FROM Users u
JOIN Orders o ON u.user_id = o.user_id


