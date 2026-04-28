# ecommerce-sql-project
A fully designed E-Commerce database project demonstrating SQL skills like schema design, data population and practical queries. It includes:

* Database schema- tables for Users, Products, Orders, Order_Items- demonstrating primary and    foreign key relationships.
* Sample data - for database testing and demonstrating the purpose.
* Practical queries
---

1. Database Schema
The database includes four main tables:

Table	            Description

* Users - Stores user information (user_id, username, email, created_at)
* Products - Stores product information (product_id, product_name, price, stock)
* Orders	- Stores orders placed by users (order_id, user_id, order_date)
* Order_Items - Stores products included in each order (order_item_id, order_id, product_id, quantity)

Relationships:
* One-to-many: Users → Orders
* One-to-many: Orders → Order_Items
* One-to-many: Products → Order_Items

---

2. Skills Demonstrated

* SQL schema creation (CREATE TABLE)
* Primary & foreign keys for relational integrity
* Data insertion (INSERT statements)
* SQL queries using:
* JOINs
* GROUP BY / aggregate functions
* Subqueries
* Filtering and ordering

3. Project Structure
ecommerce-sql-project/
 * schema.sql         - Database schema definitions
 * sample_data.sql    - Sample records for testing
 * queries.sql        - Practical SQL queries with examples
 * README.md          - Project description and instructions

---

4. Example Queries
- Display all users and their orders  
- Products ordered by a specific user  
- Total sales per product  
- Users without any orders  
- Products with low stock  

---

5. How to Use
- Import `schema.sql` into a SQL server (PostgreSQL / MySQL / SQLite)  
- Import `sample_data.sql` to populate the database with test data  
- Run `queries.sql` to see the queries in action  

---
6. Notes
- This project is beginner-friendly but demonstrates real-world SQL concepts

---

7. Future Improvements
- Add more tables (e.g., categories, payments)  
- Create views and stored procedures  
- Connect the database to a backend API  
