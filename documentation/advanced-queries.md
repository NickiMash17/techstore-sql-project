# 📊 Advanced SQL Queries & Joins in TechStore

[⬅️ Back to Database Design](./database-design.md)

---

## 📚 Table of Contents
- [Overview](#overview)
- [Joins](#joins)
- [Aggregates & Grouping](#aggregates--grouping)
- [Subqueries](#subqueries)
- [Window Functions](#window-functions)
- [Example Queries](#example-queries)

---

## 📝 Overview
This guide covers advanced SQL querying techniques using the TechStore database, including joins, aggregates, subqueries, and window functions.

## 🔗 Joins
- **INNER JOIN:** Combine rows from two tables where there is a match.
- **LEFT JOIN:** Include all rows from the left table, matched rows from the right.
- **Simulated FULL OUTER JOIN:** Combine results of LEFT and RIGHT joins (SQLite does not support FULL OUTER JOIN natively).

**See:** [`advanced-queries/joins-examples.sql`](../advanced-queries/joins-examples.sql)

## 📈 Aggregates & Grouping
- Use `COUNT`, `SUM`, `AVG`, `GROUP BY`, `HAVING` to analyze data.

**See:** [`advanced-queries/aggregate-functions.sql`](../advanced-queries/aggregate-functions.sql)

## 🔍 Subqueries
- Use subqueries in `SELECT`, `WHERE`, and `FROM` clauses for complex filtering and calculations.

**See:** [`advanced-queries/subqueries.sql`](../advanced-queries/subqueries.sql)

## 🪟 Window Functions
- Use `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, and running totals for advanced analytics.

**See:** [`advanced-queries/window-functions.sql`](../advanced-queries/window-functions.sql)

## 💡 Example Queries

| Description | Example |
|-------------|---------|
| List all orders with customer names | `SELECT o.order_id, o.order_date, c.first_name, c.last_name FROM orders o INNER JOIN customers c ON o.customer_id = c.customer_id;` |
| Total sales per customer | `SELECT c.first_name, c.last_name, SUM(o.total_amount) AS total_spent FROM customers c INNER JOIN orders o ON c.customer_id = o.customer_id GROUP BY c.first_name, c.last_name;` |
| Products that have been ordered at least once | `SELECT product_name FROM products p WHERE EXISTS (SELECT 1 FROM order_items oi WHERE oi.product_id = p.product_id);` |
| Rank products by price | `SELECT product_id, product_name, price, RANK() OVER (ORDER BY price DESC) AS price_rank FROM products;` |

> 📂 **For more, see the SQL scripts in the [`advanced-queries/`](../advanced-queries/) folder.**

---
[⬆️ Back to top](#top) | [Performance Optimization ➡️](./performance-optimization.md) 