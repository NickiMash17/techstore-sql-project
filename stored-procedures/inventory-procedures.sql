-- Trigger: Decrease stock when a new order_item is inserted
CREATE TRIGGER decrease_stock_after_order
AFTER INSERT ON order_items
BEGIN
    UPDATE products
    SET stock_quantity = stock_quantity - NEW.quantity
    WHERE product_id = NEW.product_id;
END;

-- Trigger: Prevent negative stock on products
CREATE TRIGGER prevent_negative_stock
BEFORE UPDATE ON products
FOR EACH ROW
WHEN NEW.stock_quantity < 0
BEGIN
    SELECT RAISE(ABORT, 'Stock cannot be negative');
END;

-- Trigger: Log stock changes (requires a stock_log table)
CREATE TABLE IF NOT EXISTS stock_log (
    log_id INTEGER PRIMARY KEY,
    product_id INTEGER,
    old_quantity INTEGER,
    new_quantity INTEGER,
    change_date TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TRIGGER log_stock_change
AFTER UPDATE OF stock_quantity ON products
FOR EACH ROW
WHEN OLD.stock_quantity != NEW.stock_quantity
BEGIN
    INSERT INTO stock_log (product_id, old_quantity, new_quantity)
    VALUES (NEW.product_id, OLD.stock_quantity, NEW.stock_quantity);
END;
