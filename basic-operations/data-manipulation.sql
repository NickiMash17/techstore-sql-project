-- Insert a new customer
INSERT INTO customers (first_name, last_name, email, phone, address, city, state, zip_code)
VALUES (N'Alice', N'Wonderland', N'alice@example.com', N'555-1235', N'789 Maple Rd', N'Star City', N'CA', N'90001');

-- Update a product's price
UPDATE products SET price = 1300.00 WHERE product_name = N'UltraBook Pro';

-- Delete a review by review_id
DELETE FROM reviews WHERE review_id = 2;

-- Insert a new product
INSERT INTO products (product_name, description, price, stock_quantity, category_id, supplier_id)
VALUES (N'Bluetooth Keyboard', N'Compact wireless keyboard', 45.00, 50, 3, 2);

-- Update customer address
UPDATE customers SET address = N'321 New Address Ave', city = N'Central City' WHERE customer_id = 1;

-- Delete a customer by email
DELETE FROM customers WHERE email = N'alice@example.com';

-- Insert a new order
INSERT INTO orders (customer_id, status, total_amount)
VALUES (1, N'Pending', 45.00);

-- Update order status
UPDATE orders SET status = N'Completed' WHERE order_id = 1;

-- Delete an order item
DELETE FROM order_items WHERE order_item_id = 3;

-- Insert a new review
INSERT INTO reviews (product_id, customer_id, rating, review_text)
VALUES (2, 1, 5, N'Excellent phone!');

-- Insert a new user
INSERT INTO users (username, password_hash, role)
VALUES (N'janedoe', N'hashedpassword3', N'customer');

-- Update user role
UPDATE users SET role = N'manager' WHERE username = N'janedoe';

-- Delete a user
DELETE FROM users WHERE username = N'janedoe';
