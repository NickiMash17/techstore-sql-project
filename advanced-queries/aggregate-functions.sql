-- Count the number of products in each category
SELECT c.category_name, COUNT(p.product_id) AS product_count
FROM categories c
LEFT JOIN products p ON c.category_id = p.category_id
GROUP BY c.category_id;

-- Total sales per customer
SELECT c.first_name, c.last_name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

-- Average product price per category
SELECT c.category_name, AVG(p.price) AS avg_price
FROM categories c
LEFT JOIN products p ON c.category_id = p.category_id
GROUP BY c.category_id;

-- Find the highest order total
SELECT MAX(total_amount) AS max_order_total FROM orders;

-- Find categories with more than 1 product (HAVING)
SELECT c.category_name, COUNT(p.product_id) AS product_count
FROM categories c
LEFT JOIN products p ON c.category_id = p.category_id
GROUP BY c.category_id
HAVING COUNT(p.product_id) > 1;
