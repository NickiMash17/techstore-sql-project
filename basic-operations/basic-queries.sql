-- Select all customers
SELECT * FROM customers;

-- Select all products
SELECT * FROM products;

-- Select all orders
SELECT * FROM orders;

-- Select all products in the 'Laptops' category
SELECT p.* FROM products p
INNER JOIN categories c ON p.category_id = c.category_id
WHERE c.category_name = 'Laptops';

-- Select all orders for customer 'John Doe'
SELECT o.* FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
WHERE c.first_name = 'John' AND c.last_name = 'Doe';

-- List all products with their category and supplier
SELECT p.product_name, c.category_name, s.supplier_name
FROM products p
LEFT JOIN categories c ON p.category_id = c.category_id
LEFT JOIN suppliers s ON p.supplier_id = s.supplier_id;

-- Count the number of orders per customer
SELECT c.first_name, c.last_name, COUNT(o.order_id) AS order_count
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.first_name, c.last_name, c.customer_id;

-- Get the total sales amount (sum of all orders)
SELECT SUM(total_amount) AS total_sales FROM orders;

-- List all reviews for 'UltraBook Pro'
SELECT r.rating, r.review_text, c.first_name, c.last_name
FROM reviews r
INNER JOIN products p ON r.product_id = p.product_id
INNER JOIN customers c ON r.customer_id = c.customer_id
WHERE p.product_name = 'UltraBook Pro';

-- List all products with stock less than 20
SELECT product_name, stock_quantity FROM products WHERE stock_quantity < 20;
