-- Analyze a query to see if indexes are used (example: find all orders for a customer)
EXPLAIN QUERY PLAN
SELECT * FROM orders WHERE customer_id = 1;

-- Analyze a join query (orders and customers)
EXPLAIN QUERY PLAN
SELECT o.order_id, c.first_name FROM orders o JOIN customers c ON o.customer_id = c.customer_id;

-- Analyze a product search by category
EXPLAIN QUERY PLAN
SELECT * FROM products WHERE category_id = 2;

-- Analyze a review lookup by product
EXPLAIN QUERY PLAN
SELECT * FROM reviews WHERE product_id = 1;
