# 🚀 TechStore SQL Project

[![SQLite](https://img.shields.io/badge/Database-SQLite-blue)](https://www.sqlite.org/index.html) [![VS Code](https://img.shields.io/badge/Editor-VS%20Code-blue)](https://code.visualstudio.com/)

A comprehensive SQL database system for "TechStore," an e-commerce platform, implemented in **SQLite** using standard SQL. This project covers all fundamental and advanced SQL concepts including database design, normalization, complex queries, triggers, indexing, and security—all in a portable, file-based database.

---

## 📚 Table of Contents
- [Key Features](#key-features)
- [Learning Objectives](#learning-objectives)
- [Project Structure](#project-structure)
- [How to Run](#how-to-run)
- [Screenshots](#screenshots)
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
├── scripts/                  # (Optional) Backup and utility scripts
├── tests/                    # (Optional) Test scripts
├── techstore.db              # SQLite database file
```

## ▶️ How to Run
1. **Install the SQLite extension in VS Code** (e.g., "SQLite" by Alex Covizzi)
2. **Create or open `techstore.db`** in your project folder
3. **Run `database-setup/01-schema-creation.sql`** to create all tables
4. **Run `database-setup/02-data-insertion.sql`** to insert sample data
5. **Run `indexing-optimization/index-creation.sql`** to create indexes
6. **Run any query or manipulation script to demo features**

## 🖼️ Screenshots
> _Add screenshots of your database, query results, or ER diagrams here!_

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

