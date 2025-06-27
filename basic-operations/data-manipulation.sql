-- Insert a new customer
INSERT INTO customers (first_name, last_name, email, phone, address, city, state, zip_code)
VALUES ('Alice', 'Wonderland', 'alice@example.com', '555-1235', '789 Maple Rd', 'Star City', 'CA', '90001');

-- Update a product's price
UPDATE products SET price = 1300.00 WHERE product_name = 'UltraBook Pro';

-- Delete a review by review_id
DELETE FROM reviews WHERE review_id = 2;

-- Insert a new product
INSERT INTO products (product_name, description, price, stock_quantity, category_id, supplier_id)
VALUES ('Bluetooth Keyboard', 'Compact wireless keyboard', 45.00, 50, 3, 2);

-- Update customer address
UPDATE customers SET address = '321 New Address Ave', city = 'Central City' WHERE customer_id = 1;

-- Delete a customer by email
DELETE FROM customers WHERE email = 'alice@example.com';

-- Insert a new order
INSERT INTO orders (customer_id, status, total_amount)
VALUES (1, 'Pending', 45.00);

-- Update order status
UPDATE orders SET status = 'Completed' WHERE order_id = 1;

-- Delete an order item
DELETE FROM order_items WHERE order_item_id = 3;

-- Insert a new review
INSERT INTO reviews (product_id, customer_id, rating, review_text)
VALUES (2, 1, 5, 'Excellent phone!');

-- Insert a new user
INSERT INTO users (username, password_hash, role)
VALUES ('janedoe', 'hashedpassword3', 'customer');

-- Update user role
UPDATE users SET role = 'manager' WHERE username = 'janedoe';

-- Delete a user
DELETE FROM users WHERE username = 'janedoe';
