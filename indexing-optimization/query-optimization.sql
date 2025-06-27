USE TechStore;
GO

-- Use indexed columns in WHERE clause for faster lookups
SELECT * FROM orders WHERE customer_id = 1;
GO

-- Only select needed columns (avoid SELECT *)
SELECT product_name, price FROM products WHERE category_id = 2;
GO

-- Use EXISTS instead of IN for large subqueries
SELECT product_name FROM products p
WHERE EXISTS (
    SELECT 1 FROM order_items oi WHERE oi.product_id = p.product_id
);
GO

-- Avoid functions on indexed columns in WHERE clause (so index can be used)
-- Bad: WHERE LOWER(username) = N'admin'
-- Good: WHERE username = N'admin'
SELECT * FROM users WHERE username = N'admin';
GO
