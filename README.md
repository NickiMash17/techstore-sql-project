# 🚀 TechStore SQL Project

[![SQLite](https://img.shields.io/badge/Database-SQLite-blue)](https://www.sqlite.org/index.html) [![VS Code](https://img.shields.io/badge/Editor-VS%20Code-blue)](https://code.visualstudio.com/)

A comprehensive SQL database system for "TechStore," an e-commerce platform, implemented in **SQLite** using standard SQL. This project demonstrates practical, real-world database design, normalization, advanced queries, indexing, and security—all in a portable, file-based database.

---

## 📚 Table of Contents
- [Key Features](#key-features)
- [Learning Objectives](#learning-objectives)
- [Project Structure](#project-structure)
- [How to Run](#how-to-run)
- [Example Outputs](#example-outputs)
- [Technologies Used](#technologies-used)
- [Resources](#resources)
- [License](#license)

---

## ✨ Key Features
- ✅ Normalized database schema (3NF) for customers, products, orders, reviews, users, and more
- 🔑 Primary and foreign key relationships
- 🧪 Sample data for realistic testing
- ⚡ Strategic indexes for performance
- 📊 Advanced SQL queries: joins, aggregates, subqueries, window functions
- 🔄 Triggers for business logic (where supported by SQLite)
- 📝 Data manipulation and table operations
- 💡 All scripts are compatible with SQLite and standard SQL (no vendor-specific features)

## 🎯 Learning Objectives
- Understand the fundamentals of SQL and relational databases
- Learn the basics of database design and normalization
- Master advanced SQL queries, joins, and aggregates
- Apply indexing and performance optimization
- Explore transactions and (where possible) business logic automation
- Practice database security and backup strategies

## 🗂️ Project Structure
```
├── database-setup/           # Schema and data scripts
├── indexing-optimization/    # Index creation and performance scripts
├── basic-operations/         # Basic queries and data manipulation
├── advanced-queries/         # Joins, aggregates, subqueries, window functions
├── documentation/            # ER diagrams, normalization, advanced docs
├── scripts/                  # Backup and utility scripts
├── tests/                    # Test scripts
├── techstore.db              # SQLite database file
```

## ▶️ How to Run
1. **Install the SQLite extension in VS Code** (e.g., "SQLite" by Alex Covizzi)
2. **Open or create `techstore.db`** in your project folder
3. **Run these scripts in order:**
   - `database-setup/01-schema-creation.sql`
   - `database-setup/02-data-insertion.sql`
   - `indexing-optimization/index-creation.sql`
4. **Explore and run queries** in the `basic-operations/` and `advanced-queries/` folders

## 🖼️ Example Outputs
- **ER Diagram:** See `documentation/er-diagram.md` for a visual overview of the schema.
- **Sample Query:**
  ```sql
  SELECT c.first_name, c.last_name, SUM(o.total_amount) AS total_spent
  FROM customers c
  INNER JOIN orders o ON c.customer_id = o.customer_id
  GROUP BY c.first_name, c.last_name;
  ```
- **Performance Analysis:** See `documentation/performance-optimization.md` for index usage and query plans.

## 🛠️ Technologies Used
- **Database:** SQLite (file-based, standard SQL)
- **IDE:** Visual Studio Code with SQLite extension
- **Documentation:** Markdown

## 📚 Resources
- [SQLite Documentation](https://www.sqlite.org/docs.html)
- [VS Code SQLite Extension](https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite)
- [Project Documentation](./documentation/)

## 📝 License
MIT License. See [LICENSE](./LICENSE) for details.

---

> _This project is designed for maximum portability and learning. All SQL is written in standard, cross-platform syntax for SQLite._

