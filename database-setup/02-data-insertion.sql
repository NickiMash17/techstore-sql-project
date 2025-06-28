-- Insert sample categories
INSERT INTO categories (category_name) VALUES
('Laptops'),
('Smartphones'),
('Accessories');

-- Insert sample suppliers
INSERT INTO suppliers (supplier_name, contact_name, contact_email, contact_phone) VALUES
('Tech Distributors Inc.', 'Alice Smith', 'alice@techdist.com', '555-1234'),
('Gadget Supply Co.', 'Bob Johnson', 'bob@gadgets.com', '555-5678');

-- Insert sample products
INSERT INTO products (product_name, description, price, stock_quantity, category_id, supplier_id) VALUES
('UltraBook Pro', 'High-end laptop with 16GB RAM', 1200.00, 10, 1, 1),
('SmartPhone X', 'Latest smartphone with OLED display', 800.00, 25, 2, 2),
('Wireless Mouse', 'Ergonomic wireless mouse', 25.00, 100, 3, 1);

-- Insert sample customers
INSERT INTO customers (first_name, last_name, email, phone, address, city, state, zip_code) VALUES
('John', 'Doe', 'john.doe@email.com', '555-0001', '123 Main St', 'Metropolis', 'NY', '10001'),
('Jane', 'Smith', 'jane.smith@email.com', '555-0002', '456 Oak Ave', 'Gotham', 'NJ', '07001');

-- Insert sample users
INSERT INTO users (username, password_hash, role) VALUES
('admin', 'hashedpassword1', 'admin'),
('johndoe', 'hashedpassword2', 'customer');

-- Insert sample orders
INSERT INTO orders (customer_id, status, total_amount) VALUES
(1, 'Processing', 1225.00),
(2, 'Shipped', 800.00);

-- Insert sample order_items
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 1200.00),
(1, 3, 1, 25.00),
(2, 2, 1, 800.00);

-- Insert sample reviews
INSERT INTO reviews (product_id, customer_id, rating, review_text) VALUES
(1, 1, 5, 'Fantastic laptop!'),
(2, 2, 4, 'Great phone, but battery life could be better.');