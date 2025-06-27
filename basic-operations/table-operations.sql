-- Create a new table for product discounts
CREATE TABLE product_discounts (
    discount_id INT IDENTITY(1,1) PRIMARY KEY,
    product_id INT NOT NULL,
    discount_percent DECIMAL(5,2) NOT NULL,
    start_date DATETIME,
    end_date DATETIME,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Add a new column to the customers table for loyalty points
ALTER TABLE customers ADD loyalty_points INT DEFAULT 0;

-- Drop the product_discounts table
DROP TABLE IF EXISTS product_discounts;

-- Rename a column in the suppliers table (SQL Server syntax)
-- EXEC sp_rename 'suppliers.contact_name', 'contact_full_name', 'COLUMN';
