USE TechStore;
GO

-- Drop tables if they exist (in reverse dependency order)
IF OBJECT_ID('order_items', 'U') IS NOT NULL
BEGIN
    DROP TABLE order_items;
END
GO
IF OBJECT_ID('reviews', 'U') IS NOT NULL
BEGIN
    DROP TABLE reviews;
END
GO
IF OBJECT_ID('orders', 'U') IS NOT NULL
BEGIN
    DROP TABLE orders;
END
GO
IF OBJECT_ID('products', 'U') IS NOT NULL
BEGIN
    DROP TABLE products;
END
GO
IF OBJECT_ID('users', 'U') IS NOT NULL
BEGIN
    DROP TABLE users;
END
GO
IF OBJECT_ID('customers', 'U') IS NOT NULL
BEGIN
    DROP TABLE customers;
END
GO
IF OBJECT_ID('categories', 'U') IS NOT NULL
BEGIN
    DROP TABLE categories;
END
GO
IF OBJECT_ID('suppliers', 'U') IS NOT NULL
BEGIN
    DROP TABLE suppliers;
END
GO

-- Customers table
CREATE TABLE customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name NVARCHAR(50) NOT NULL,
    last_name NVARCHAR(50) NOT NULL,
    email NVARCHAR(100) UNIQUE NOT NULL,
    phone NVARCHAR(20),
    address NVARCHAR(200),
    city NVARCHAR(50),
    state NVARCHAR(50),
    zip_code NVARCHAR(20),
    created_at DATETIME DEFAULT GETDATE()
);
GO

-- Categories table
CREATE TABLE categories (
    category_id INT IDENTITY(1,1) PRIMARY KEY,
    category_name NVARCHAR(100) NOT NULL UNIQUE
);
GO

-- Suppliers table
CREATE TABLE suppliers (
    supplier_id INT IDENTITY(1,1) PRIMARY KEY,
    supplier_name NVARCHAR(100) NOT NULL,
    contact_name NVARCHAR(100),
    contact_email NVARCHAR(100),
    contact_phone NVARCHAR(20)
);
GO

-- Products table
CREATE TABLE products (
    product_id INT IDENTITY(1,1) PRIMARY KEY,
    product_name NVARCHAR(100) NOT NULL,
    description NVARCHAR(500),
    price DECIMAL(18,2) NOT NULL,
    stock_quantity INT NOT NULL,
    category_id INT,
    supplier_id INT,
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);
GO

-- Orders table
CREATE TABLE orders (
    order_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATETIME DEFAULT GETDATE(),
    status NVARCHAR(50) NOT NULL,
    total_amount DECIMAL(18,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
GO

-- Order Items table
CREATE TABLE order_items (
    order_item_id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(18,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
GO

-- Reviews table
CREATE TABLE reviews (
    review_id INT IDENTITY(1,1) PRIMARY KEY,
    product_id INT NOT NULL,
    customer_id INT NOT NULL,
    rating INT CHECK(rating >= 1 AND rating <= 5),
    review_text NVARCHAR(1000),
    review_date DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
GO

-- Users table (for authentication)
CREATE TABLE users (
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    username NVARCHAR(50) UNIQUE NOT NULL,
    password_hash NVARCHAR(255) NOT NULL,
    role NVARCHAR(50) NOT NULL,
    created_at DATETIME DEFAULT GETDATE()
);
GO
