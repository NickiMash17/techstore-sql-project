-- Use indexed columns in WHERE clause for faster lookups
SELECT * FROM orders WHERE customer_id = 1;

-- Only select needed columns (avoid SELECT *)
SELECT product_name, price FROM products WHERE category_id = 2;

-- Use EXISTS instead of IN for large subqueries
SELECT product_name FROM products p
WHERE EXISTS (
    SELECT 1 FROM order_items oi WHERE oi.product_id = p.product_id
);

-- Avoid functions on indexed columns in WHERE clause (so index can be used)
-- Bad: WHERE LOWER(username) = 'admin'
-- Good: WHERE username = 'admin'
SELECT * FROM users WHERE username = 'admin';
