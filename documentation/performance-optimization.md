# ⚡ Indexing & Performance Optimization in TechStore

[⬅️ Back to Advanced Queries](./advanced-queries.md)

---

## 📚 Table of Contents
- [Why Indexing Matters](#why-indexing-matters)
- [Creating Indexes in SQLite](#creating-indexes-in-sqlite)
- [When to Use Indexes](#when-to-use-indexes)
- [Analyzing Query Performance](#analyzing-query-performance)
- [Query Optimization Tips](#query-optimization-tips)
- [More Resources](#more-resources)

---

## ⚡ Why Indexing Matters
Indexes speed up data retrieval by allowing the database to find rows more efficiently. Without indexes, the database must scan every row in a table to find matches.

## 🏗️ Creating Indexes in SQLite
Use the `CREATE INDEX` statement to add indexes to columns that are frequently searched or joined.

**Example (see [`indexing-optimization/index-creation.sql`](../indexing-optimization/index-creation.sql`)):**
```sql
CREATE INDEX IF NOT EXISTS idx_products_category_id ON products(category_id);
```

## 📌 When to Use Indexes
- On columns used in WHERE clauses
- On columns used in JOIN conditions
- On columns used in ORDER BY or GROUP BY

## 🔬 Analyzing Query Performance
SQLite provides the `EXPLAIN QUERY PLAN` command to show how a query will be executed and whether indexes are used.

**Example:**
```sql
EXPLAIN QUERY PLAN
SELECT * FROM products WHERE category_id = 1;
```
Look for the word "USING INDEX" in the output to confirm index usage.

## 💡 Query Optimization Tips
- Only select the columns you need (avoid `SELECT *` in production)
- Use indexes on large tables for frequently queried columns
- Avoid functions on indexed columns in WHERE clauses (e.g., `LOWER(column)`)

## 📚 More Resources
- [SQLite Query Planning](https://www.sqlite.org/optoverview.html)
- [SQLite Indexes Documentation](https://www.sqlite.org/lang_createindex.html)

---
[⬆️ Back to top](#top) | [Back to README](../README.md) 