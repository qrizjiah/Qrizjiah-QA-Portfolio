-- SQL Data Validation Project - Validation Queries
-- QA-style checks to validate data integrity and business rules.

-------------------------------------------------------
-- 1. Basic sanity check: count records in each table
-------------------------------------------------------
SELECT 'customers' AS table_name, COUNT(*) AS row_count FROM customers
UNION ALL
SELECT 'products', COUNT(*) FROM products
UNION ALL
SELECT 'orders', COUNT(*) FROM orders
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items;

-------------------------------------------------------
-- 2. Verify orders are linked to valid customers
-------------------------------------------------------
SELECT o.order_id, o.customer_id
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;
-- Expected: 0 rows (no orders with missing customers)

-------------------------------------------------------
-- 3. Verify order_items are linked to valid orders and products
-------------------------------------------------------
SELECT oi.order_item_id, oi.order_id, oi.product_id
FROM order_items oi
LEFT JOIN orders o ON oi.order_id = o.order_id
LEFT JOIN products p ON oi.product_id = p.product_id
WHERE o.order_id IS NULL
   OR p.product_id IS NULL;
-- Expected: 0 rows (no orphan order_items)

-------------------------------------------------------
-- 4. Check for inactive products used in orders
-------------------------------------------------------
SELECT DISTINCT p.product_id, p.product_name, p.active
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
WHERE p.active = FALSE;
-- Any rows here may indicate a business-rule violation.

-------------------------------------------------------
-- 5. Validate order_total matches sum of order_items
-------------------------------------------------------
SELECT 
    o.order_id,
    o.order_total AS header_total,
    SUM(oi.line_total) AS items_total,
    (o.order_total - SUM(oi.line_total)) AS difference
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id, o.order_total
HAVING o.order_total <> SUM(oi.line_total);
-- Any rows returned here indicate mismatched totals.

-------------------------------------------------------
-- 6. Validate line_total = quantity * product price
-------------------------------------------------------
SELECT
    oi.order_item_id,
    oi.order_id,
    oi.product_id,
    oi.quantity,
    oi.line_total,
    (oi.quantity * p.price) AS expected_line_total,
    (oi.line_total - (oi.quantity * p.price)) AS difference
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
WHERE oi.line_total <> (oi.quantity * p.price);
-- This should flag the intentional bad data we inserted.

-------------------------------------------------------
-- 7. Customer order summary: total spend per customer
-------------------------------------------------------
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.order_total) AS total_spent
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, customer_name
ORDER BY total_spent DESC;