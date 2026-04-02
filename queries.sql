-- List all the users with their orders

SELECT u.username, o.order_id, o.order_date
FROM Users u
JOIN Orders o ON u.user_id = o.user_id

-- All the products ordered by an user
SELECT u.username, p.product_name, oi_quantity
FROM Users u
JOIN Orders o ON u.user_id = o.user_id
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
WHERE u.username = 'mia';

-- 3. Total sales per product
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM Products p
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.product_name;

-- 4. Users with no orders
SELECT username FROM Users
WHERE user_id NOT IN (SELECT user_id FROM Orders);

-- 5. Products with stock < 10
SELECT product_name, stock FROM Products
WHERE stock < 10;
