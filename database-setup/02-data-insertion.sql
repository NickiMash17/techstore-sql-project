-- Insert sample categories
INSERT INTO categories (category_name) VALUES
(N'Laptops'),
(N'Smartphones'),
(N'Accessories');

-- Insert sample suppliers
INSERT INTO suppliers (supplier_name, contact_name, contact_email, contact_phone) VALUES
(N'Tech Distributors Inc.', N'Alice Smith', N'alice@techdist.com', N'555-1234'),
(N'Gadget Supply Co.', N'Bob Johnson', N'bob@gadgets.com', N'555-5678');

-- Insert sample products
INSERT INTO products (product_name, description, price, stock_quantity, category_id, supplier_id) VALUES
(N'UltraBook Pro', N'High-end laptop with 16GB RAM', 1200.00, 10, 1, 1),
(N'SmartPhone X', N'Latest smartphone with OLED display', 800.00, 25, 2, 2),
(N'Wireless Mouse', N'Ergonomic wireless mouse', 25.00, 100, 3, 1);

-- Insert sample customers
INSERT INTO customers (first_name, last_name, email, phone, address, city, state, zip_code) VALUES
(N'John', N'Doe', N'john.doe@email.com', N'555-0001', N'123 Main St', N'Metropolis', N'NY', N'10001'),
(N'Jane', N'Smith', N'jane.smith@email.com', N'555-0002', N'456 Oak Ave', N'Gotham', N'NJ', N'07001');

-- Insert sample users
INSERT INTO users (username, password_hash, role) VALUES
(N'admin', N'hashedpassword1', N'admin'),
(N'johndoe', N'hashedpassword2', N'customer');

-- Insert sample orders
INSERT INTO orders (customer_id, status, total_amount) VALUES
(1, N'Processing', 1225.00),
(2, N'Shipped', 800.00);

-- Insert sample order_items
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 1200.00),
(1, 3, 1, 25.00),
(2, 2, 1, 800.00);

-- Insert sample reviews
INSERT INTO reviews (product_id, customer_id, rating, review_text) VALUES
(1, 1, 5, N'Fantastic laptop!'),
(2, 2, 4, N'Great phone, but battery life could be better.');
