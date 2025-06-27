-- Create a new table for product discounts
CREATE TABLE IF NOT EXISTS product_discounts (
    discount_id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_id INTEGER NOT NULL,
    discount_percent REAL NOT NULL,
    start_date DATETIME,
    end_date DATETIME,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Add a new column to the customers table for loyalty points
ALTER TABLE customers ADD COLUMN loyalty_points INTEGER DEFAULT 0;

-- Drop the product_discounts table
DROP TABLE IF EXISTS product_discounts;

-- Rename a column in the suppliers table (SQLite does not support direct RENAME COLUMN, so show the recommended approach)
-- 1. Create new table with desired schema
-- 2. Copy data
-- 3. Drop old table
-- 4. Rename new table
-- (See SQLite docs for details)
