USE TechStore;
GO

-- Example: Atomic order creation transaction
BEGIN TRANSACTION;

-- Insert a new order
INSERT INTO orders (customer_id, status, total_amount)
VALUES (1, N'Processing', 100.00);
GO

-- Get the last inserted order_id
DECLARE @order_id INT = SCOPE_IDENTITY();

-- Insert order items
INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES (@order_id, 1, 1, 100.00);
GO

-- Stock will be updated by trigger

-- If everything is successful
COMMIT;
GO

-- If any error occurs, use ROLLBACK;
-- ROLLBACK;
GO
