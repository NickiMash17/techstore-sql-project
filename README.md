# techstore-sql-project

This project demonstrates a comprehensive SQL database system for "TechStore," an e-commerce platform, implemented in **SQLite** using standard SQL. It covers all fundamental and advanced SQL concepts including database design, normalization, complex queries, triggers, indexing, and security—all in a portable, file-based database.

## Key Features
- Normalized database schema (3NF) for customers, products, orders, reviews, users, and more
- Primary and foreign key relationships
- Sample data for realistic testing
- Strategic indexes for performance
- Advanced SQL queries: joins, aggregates, subqueries, window functions
- Triggers for business logic (where supported by SQLite)
- Data manipulation and table operations
- All scripts are compatible with SQLite and standard SQL (no vendor-specific features)

## How to Run
1. **Install the SQLite extension in VS Code** (e.g., "SQLite" by Alex Covizzi)
2. **Create or open `techstore.db`** in your project folder
3. **Run `database-setup/01-schema-creation.sql`** to create all tables
4. **Run `database-setup/02-data-insertion.sql`** to insert sample data
5. **Run `indexing-optimization/index-creation.sql`** to create indexes
6. **Run any query or manipulation script to demo features

## Technologies Used
- **Database:** SQLite (file-based, standard SQL)
- **IDE:** Visual Studio Code with SQLite extension
- **Documentation:** Markdown

## Note
This project is designed for maximum portability and learning. All SQL is written in standard, cross-platform syntax for SQLite.

