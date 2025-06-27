-- Scalar subquery: Find the most expensive product
SELECT product_name, price
FROM products
WHERE price = (SELECT MAX(price) FROM products);

-- IN subquery: List customers who have placed orders
SELECT first_name, last_name
FROM customers
WHERE customer_id IN (SELECT customer_id FROM orders);

-- EXISTS subquery: List products that have been ordered at least once
SELECT product_name
FROM products p
WHERE EXISTS (
    SELECT 1 FROM order_items oi WHERE oi.product_id = p.product_id
);

-- Correlated subquery: List customers and their total number of orders
SELECT c.first_name, c.last_name,
    (SELECT COUNT(*) FROM orders o WHERE o.customer_id = c.customer_id) AS order_count
FROM customers c;
