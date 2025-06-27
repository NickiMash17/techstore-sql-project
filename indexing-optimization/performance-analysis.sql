-- Enable query plan output
SET SHOWPLAN_ALL ON;
GO

-- Analyze a query to see if indexes are used (example: find all orders for a customer)
SELECT * FROM orders WHERE customer_id = 1;
GO

-- Analyze a join query (orders and customers)
SELECT o.order_id, c.first_name FROM orders o JOIN customers c ON o.customer_id = c.customer_id;
GO

-- Analyze a product search by category
SELECT * FROM products WHERE category_id = 2;
GO

-- Analyze a review lookup by product
SELECT * FROM reviews WHERE product_id = 1;
GO

-- Disable query plan output
SET SHOWPLAN_ALL OFF;
GO
