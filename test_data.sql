-- SQL Data Validation Project - Test Data
-- Insert sample customers, products, orders, and order_items

-- Customers
INSERT INTO customers (customer_id, first_name, last_name, email, created_at) VALUES
(1, 'Jordan', 'Reed', 'jordan.reed@example.com', '2024-10-01'),
(2, 'Taylor', 'Brown', 'taylor.brown@example.com', '2024-10-05'),
(3, 'Alex', 'King', 'alex.king@example.com', '2024-10-10');

-- Products
INSERT INTO products (product_id, product_name, category, price, active) VALUES
(1, 'Wireless Headphones', 'Electronics', 99.99, TRUE),
(2, 'Gaming Mouse', 'Electronics', 49.99, TRUE),
(3, 'Yoga Mat', 'Fitness', 29.99, TRUE),
(4, 'Old USB Cable', 'Electronics', 9.99, FALSE); -- inactive product

-- Orders
INSERT INTO orders (order_id, customer_id, order_date, order_status, order_total) VALUES
(1001, 1, '2024-11-01', 'COMPLETED', 149.98),
(1002, 1, '2024-11-03', 'PENDING', 29.99),
(1003, 2, '2024-11-05', 'COMPLETED', 199.98);

-- Order items
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, line_total) VALUES
(1, 1001, 1, 1, 99.99),
(2, 1001, 2, 1, 49.99),
(3, 1002, 3, 1, 29.99),
(4, 1003, 1, 2, 199.00); -- INTENTIONAL BUG (2 * 99.99 = 199.98, not 199.00)