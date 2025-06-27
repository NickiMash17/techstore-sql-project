USE TechStore;
GO

-- Table for stock log
IF OBJECT_ID('stock_log', 'U') IS NULL
CREATE TABLE stock_log (
    log_id INT IDENTITY(1,1) PRIMARY KEY,
    product_id INT,
    old_quantity INT,
    new_quantity INT,
    change_date DATETIME DEFAULT GETDATE()
);
GO

-- Trigger: Decrease stock when a new order_item is inserted
IF OBJECT_ID('trg_decrease_stock_after_order', 'TR') IS NOT NULL DROP TRIGGER trg_decrease_stock_after_order;
GO
CREATE TRIGGER trg_decrease_stock_after_order
ON order_items
AFTER INSERT
AS
BEGIN
    UPDATE p
    SET p.stock_quantity = p.stock_quantity - i.quantity
    FROM products p
    INNER JOIN inserted i ON p.product_id = i.product_id;
END;
GO

-- Trigger: Prevent negative stock on products
IF OBJECT_ID('trg_prevent_negative_stock', 'TR') IS NOT NULL DROP TRIGGER trg_prevent_negative_stock;
GO
CREATE TRIGGER trg_prevent_negative_stock
ON products
AFTER UPDATE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE stock_quantity < 0)
    BEGIN
        RAISERROR('Stock cannot be negative', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
GO

-- Trigger: Log stock changes
IF OBJECT_ID('trg_log_stock_change', 'TR') IS NOT NULL DROP TRIGGER trg_log_stock_change;
GO
CREATE TRIGGER trg_log_stock_change
ON products
AFTER UPDATE
AS
BEGIN
    INSERT INTO stock_log (product_id, old_quantity, new_quantity)
    SELECT i.product_id, d.stock_quantity, i.stock_quantity
    FROM inserted i
    INNER JOIN deleted d ON i.product_id = d.product_id
    WHERE i.stock_quantity <> d.stock_quantity;
END;
GO
