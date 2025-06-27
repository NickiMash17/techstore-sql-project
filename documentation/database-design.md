# TechStore Database Schema Design

## Overview
This schema is designed for a normalized e-commerce database, supporting customers, products, orders, inventory, reviews, suppliers, and user authentication. All tables are in at least 3NF.

## Tables and Relationships

### 1. customers
- Stores customer information (name, contact, address)
- Primary Key: customer_id

### 2. categories
- Product categories (e.g., Laptops, Accessories)
- Primary Key: category_id

### 3. suppliers
- Supplier details for products
- Primary Key: supplier_id

### 4. products
- Product catalog with price, stock, category, and supplier
- Primary Key: product_id
- Foreign Keys: category_id → categories, supplier_id → suppliers

### 5. orders
- Order headers (one per order)
- Primary Key: order_id
- Foreign Key: customer_id → customers

### 6. order_items
- Line items for each order (product, quantity, price)
- Primary Key: order_item_id
- Foreign Keys: order_id → orders, product_id → products

### 7. reviews
- Customer reviews for products
- Primary Key: review_id
- Foreign Keys: product_id → products, customer_id → customers

### 8. users
- Application users for authentication/authorization
- Primary Key: user_id

## Normalization
- All tables are in 3NF: atomic columns, no repeating groups, all non-key attributes depend on the key, and no transitive dependencies.

## Relationships
- products ↔ categories: Many-to-One
- products ↔ suppliers: Many-to-One
- orders ↔ customers: Many-to-One
- order_items ↔ orders: Many-to-One
- order_items ↔ products: Many-to-One
- reviews ↔ products: Many-to-One
- reviews ↔ customers: Many-to-One

## Notes
- Foreign key constraints are enforced (PRAGMA foreign_keys = ON in SQLite).
- The users table is for application-level authentication, not database-level security.
