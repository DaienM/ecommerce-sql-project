--Users Table

CREATE TABLE USERS (
  user_id INT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  created_at DATE DEFAULT CURRENT_DATE
  );

--Products Table
CREATE TABLE Products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  stock INT NOT NULL
  );

--Orders Table
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  user_id INT NOT NULL,
  order_date DATE DEFAULT CURRENT_DATE,
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

--Order_Items Table 
CREATE TABLE Order_Items (
  order_item_id INT PRIMARY KEY,
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INT NOT NULL,
  FOREIGN KEY (order_id) REFERENCES Orders(order.id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
