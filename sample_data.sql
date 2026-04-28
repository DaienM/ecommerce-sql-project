--Populating tables with test data.

-- Users
INSERT INTO Users (user_id, username, email) VALUES
(1, 'alice', 'alice@gmail.com'),
(2, 'dia', 'dia@gmail.com'),
(3, 'mia', 'mia@gmail.com');

-- Products
INSERT INTO Products (product_id, product_name, price, stock) VALUES
(1, 'Laptop', 1200.00, 10),
(2, 'Mouse', 25.50, 50),
(3, 'Keyboard', 45.00, 30);

-- Orders
INSERT INTO Orders (order_id, user_id,total, order_date) VALUES
(1, 1, 1250.00, '2026-02-01'),
(2, 2, 46.00, '2026-02-02'),
(3, 1, 78.00, '2026-02-02');

-- Order_Items
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price) VALUES
(1, 1, 1, 1, 1200.00),
(2, 1, 2, 2, 25.50),
(3, 2, 3, 1, 45.00),
(4, 3, 2, 3, 25.50);
