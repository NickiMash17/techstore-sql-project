-- ROW_NUMBER: List all orders with a row number by order date
SELECT order_id, customer_id, order_date,
       ROW_NUMBER() OVER (ORDER BY order_date) AS row_num
FROM orders;

-- RANK: Rank products by price (highest first)
SELECT product_id, product_name, price,
       RANK() OVER (ORDER BY price DESC) AS price_rank
FROM products;

-- DENSE_RANK: Rank customers by total spent (ties get same rank)
SELECT customer_id, first_name, last_name, total_spent,
       DENSE_RANK() OVER (ORDER BY total_spent DESC) AS spend_rank
FROM (
    SELECT c.customer_id, c.first_name, c.last_name, SUM(o.total_amount) AS total_spent
    FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
) AS customer_totals;

-- Running total of order amounts by order date
SELECT order_id, order_date, total_amount,
       SUM(total_amount) OVER (ORDER BY order_date) AS running_total
FROM orders;
