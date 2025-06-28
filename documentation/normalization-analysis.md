# 🏆 Database Normalization in TechStore

[⬅️ Back to Database Design](./database-design.md)

---

## 📖 What is Normalization?
Normalization is the process of organizing data in a database to reduce redundancy and improve data integrity. The main normal forms are:

| Normal Form | Key Points | Example from TechStore |
|-------------|------------|-----------------------|
| **1NF**     | - Each table has a primary key<br>- Each column contains atomic values | `customers`: Each field (first_name, last_name, etc.) contains a single value |
| **2NF**     | - Meets all 1NF requirements<br>- All non-key attributes fully depend on the primary key | `order_items`: All fields depend on order_item_id |
| **3NF**     | - Meets all 2NF requirements<br>- No transitive dependencies | `products`: price and stock_quantity depend only on product_id |

> ℹ️ **Tip:** All tables in TechStore are designed to meet 3NF for maximum data integrity and minimal redundancy.

## 🏅 How TechStore Schema Meets Normalization
- ✅ All tables have primary keys
- ✅ No repeating groups or arrays
- ✅ All non-key columns depend only on the primary key
- ✅ No transitive dependencies

See [`database-setup/01-schema-creation.sql`](../database-setup/01-schema-creation.sql) for schema details.

---
[⬆️ Back to top](#top) | [Database Design ➡️](./database-design.md)
