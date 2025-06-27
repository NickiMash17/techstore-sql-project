USE TechStore;
GO

-- Select all customers
SELECT * FROM customers;
GO

-- Select all products
SELECT * FROM products;
GO

-- Select all orders
SELECT * FROM orders;
GO

-- Select all products in the 'Laptops' category
SELECT p.* FROM products p
INNER JOIN categories c ON p.category_id = c.category_id
WHERE c.category_name = N'Laptops';
GO

-- Select all orders for customer 'John Doe'
SELECT o.* FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
WHERE c.first_name = N'John' AND c.last_name = N'Doe';
GO

-- List all products with their category and supplier
SELECT p.product_name, c.category_name, s.supplier_name
FROM products p
LEFT JOIN categories c ON p.category_id = c.category_id
LEFT JOIN suppliers s ON p.supplier_id = s.supplier_id;
GO

-- Count the number of orders per customer
SELECT c.first_name, c.last_name, COUNT(o.order_id) AS order_count
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.first_name, c.last_name, c.customer_id;
GO

-- Get the total sales amount (sum of all orders)
SELECT SUM(total_amount) AS total_sales FROM orders;
GO

-- List all reviews for 'UltraBook Pro'
SELECT r.rating, r.review_text, c.first_name, c.last_name
FROM reviews r
INNER JOIN products p ON r.product_id = p.product_id
INNER JOIN customers c ON r.customer_id = c.customer_id
WHERE p.product_name = N'UltraBook Pro';
GO

-- List all products with stock less than 20
SELECT product_name, stock_quantity FROM products WHERE stock_quantity < 20;
GO
