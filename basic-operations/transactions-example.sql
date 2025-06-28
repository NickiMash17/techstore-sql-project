-- Example: Atomic order creation transaction in SQLite

BEGIN TRANSACTION;

-- Insert a new order
INSERT INTO orders (customer_id, status, total_amount)
VALUES (1, 'Processing', 100.00);

-- Insert order items for the new order
INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES (last_insert_rowid(), 1, 1, 100.00);

-- If all statements succeed, commit the transaction
COMMIT;

-- If any statement fails, use ROLLBACK;
-- ROLLBACK; 