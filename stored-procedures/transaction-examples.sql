-- Example: Atomic order creation transaction
BEGIN TRANSACTION;

-- Insert a new order
INSERT INTO orders (customer_id, status, total_amount)
VALUES (1, 'Processing', 100.00);

-- Get the last inserted order_id (in application code, use last_insert_rowid())
-- For demonstration, assume order_id = 3

-- Insert order items
INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES (3, 1, 1, 100.00);

-- Stock will be updated by trigger

-- If any error occurs, ROLLBACK; otherwise, COMMIT
COMMIT;

-- To rollback manually (if needed):
-- ROLLBACK;
