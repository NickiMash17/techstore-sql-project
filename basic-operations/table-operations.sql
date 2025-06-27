USE TechStore;
GO

-- Create a new table for product discounts
IF OBJECT_ID('product_discounts', 'U') IS NOT NULL DROP TABLE product_discounts;
GO
CREATE TABLE product_discounts (
    discount_id INT IDENTITY(1,1) PRIMARY KEY,
    product_id INT NOT NULL,
    discount_percent DECIMAL(5,2) NOT NULL,
    start_date DATETIME,
    end_date DATETIME,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
GO

-- Add a new column to the customers table for loyalty points
IF COL_LENGTH('customers', 'loyalty_points') IS NULL
    ALTER TABLE customers ADD loyalty_points INT DEFAULT 0;
GO

-- Drop the product_discounts table
DROP TABLE IF EXISTS product_discounts;
GO

-- Rename a column in the suppliers table (SQL Server syntax)
-- EXEC sp_rename 'suppliers.contact_name', 'contact_full_name', 'COLUMN';
GO
