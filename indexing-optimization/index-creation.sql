USE TechStore;
GO

-- Index on products.category_id for faster category lookups
CREATE INDEX idx_products_category_id ON products(category_id);
GO

-- Index on products.supplier_id for supplier queries
CREATE INDEX idx_products_supplier_id ON products(supplier_id);
GO

-- Index on orders.customer_id for customer order lookups
CREATE INDEX idx_orders_customer_id ON orders(customer_id);
GO

-- Index on order_items.order_id for order item lookups
CREATE INDEX idx_order_items_order_id ON order_items(order_id);
GO

-- Index on order_items.product_id for product order lookups
CREATE INDEX idx_order_items_product_id ON order_items(product_id);
GO

-- Index on reviews.product_id for product review queries
CREATE INDEX idx_reviews_product_id ON reviews(product_id);
GO

-- Index on reviews.customer_id for customer review queries
CREATE INDEX idx_reviews_customer_id ON reviews(customer_id);
GO

-- Index on users.username for fast authentication
CREATE UNIQUE INDEX idx_users_username ON users(username);
GO
