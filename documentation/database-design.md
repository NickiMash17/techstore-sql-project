# 🗂️ TechStore Database Schema Design

[⬅️ Back to README](../README.md)

---

## 📚 Table of Contents
- [Introduction to SQL & Relational Databases](#introduction-to-sql--relational-databases)
- [Overview](#overview)
- [Tables and Relationships](#tables-and-relationships)
- [Normalization](#normalization)
- [Relationships](#relationships)
- [Notes](#notes)

---

## 🧩 Introduction to SQL & Relational Databases
SQL (Structured Query Language) is the standard language for managing and querying data in relational databases. A relational database organizes data into tables (relations) with rows and columns, using keys to link related data. Normalization is the process of structuring a database to minimize redundancy and ensure data integrity.

## 📝 Overview
This schema is designed for a normalized e-commerce database, supporting customers, products, orders, inventory, reviews, suppliers, and user authentication. All tables are in at least 3NF.

## 📋 Tables and Relationships

| Table         | Description                                 | Primary Key      | Foreign Keys                        |
|---------------|---------------------------------------------|------------------|-------------------------------------|
| customers     | Customer info (name, contact, address)      | customer_id      |                                     |
| categories    | Product categories (e.g., Laptops)          | category_id      |                                     |
| suppliers     | Supplier details for products               | supplier_id      |                                     |
| products      | Product catalog                             | product_id       | category_id → categories<br>supplier_id → suppliers |
| orders        | Order headers                               | order_id         | customer_id → customers             |
| order_items   | Line items for each order                   | order_item_id    | order_id → orders<br>product_id → products |
| reviews       | Customer reviews for products               | review_id        | product_id → products<br>customer_id → customers |
| users         | Application users for authentication        | user_id          |                                     |

## 🏆 Normalization
- All tables are in 3NF: atomic columns, no repeating groups, all non-key attributes depend on the key, and no transitive dependencies.
- See [Normalization Analysis](./normalization-analysis.md) for details.

## 🔗 Relationships
- products ↔ categories: Many-to-One
- products ↔ suppliers: Many-to-One
- orders ↔ customers: Many-to-One
- order_items ↔ orders: Many-to-One
- order_items ↔ products: Many-to-One
- reviews ↔ products: Many-to-One
- reviews ↔ customers: Many-to-One

## 📝 Notes
- Foreign key constraints are enforced (`PRAGMA foreign_keys = ON` in SQLite).
- The users table is for application-level authentication, not database-level security.

---
[⬆️ Back to top](#top) | [Normalization Analysis ➡️](./normalization-analysis.md)
