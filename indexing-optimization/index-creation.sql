-- Index on products.category_id for faster category lookups
CREATE INDEX IF NOT EXISTS idx_products_category_id ON products(category_id);

-- Index on products.supplier_id for supplier queries
CREATE INDEX IF NOT EXISTS idx_products_supplier_id ON products(supplier_id);

-- Index on orders.customer_id for customer order lookups
CREATE INDEX IF NOT EXISTS idx_orders_customer_id ON orders(customer_id);

-- Index on order_items.order_id for order item lookups
CREATE INDEX IF NOT EXISTS idx_order_items_order_id ON order_items(order_id);

-- Index on order_items.product_id for product order lookups
CREATE INDEX IF NOT EXISTS idx_order_items_product_id ON order_items(product_id);

-- Index on reviews.product_id for product review queries
CREATE INDEX IF NOT EXISTS idx_reviews_product_id ON reviews(product_id);

-- Index on reviews.customer_id for customer review queries
CREATE INDEX IF NOT EXISTS idx_reviews_customer_id ON reviews(customer_id);
