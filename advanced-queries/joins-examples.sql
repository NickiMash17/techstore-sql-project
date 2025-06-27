USE TechStore;
GO

-- INNER JOIN: List all orders with customer names
SELECT o.order_id, o.order_date, c.first_name, c.last_name
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;
GO

-- LEFT JOIN: List all products and their categories (including products without a category)
SELECT p.product_name, c.category_name
FROM products p
LEFT JOIN categories c ON p.category_id = c.category_id;
GO

-- Simulated RIGHT JOIN: List all categories and their products (including categories with no products)
SELECT c.category_name, p.product_name
FROM categories c
LEFT JOIN products p ON p.category_id = c.category_id;
GO

-- Simulated FULL OUTER JOIN: Combine LEFT and RIGHT JOIN results for categories and products
SELECT c.category_name, p.product_name
FROM categories c
LEFT JOIN products p ON p.category_id = c.category_id
UNION
SELECT c.category_name, p.product_name
FROM products p
LEFT JOIN categories c ON p.category_id = c.category_id;
GO
