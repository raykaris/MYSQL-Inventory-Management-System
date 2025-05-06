-- Create users 
CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'AdminPass123!';
CREATE USER 'inventory_user'@'localhost' IDENTIFIED BY 'InvPass123!';
CREATE USER 'sales_user'@'localhost' IDENTIFIED BY 'SalesPass123!';

-- Grant Admin all privileges
GRANT ALL PRIVILEGES ON Watu_Inventories.* TO 'admin_user'@'localhost';

-- Grant Inventory Manager specific privileges
GRANT SELECT, INSERT, UPDATE, DELETE ON Watu_Inventories.Supplier TO 'inventory_user'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON Watu_Inventories.Product TO 'inventory_user'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON Watu_Inventories.Stock TO 'inventory_user'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON Watu_Inventories.PurchaseOrder TO 'inventory_user'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON Watu_Inventories.PurchaseOrderItem TO 'inventory_user'@'localhost';
GRANT SELECT, INSERT ON Watu_Inventories.StockTransaction TO 'inventory_user'@'localhost';

-- Grant Sales Representative limited access
GRANT SELECT ON Watu_Inventories.Product TO 'sales_user'@'localhost';
GRANT SELECT ON Watu_Inventories.Stock TO 'sales_user'@'localhost';
GRANT SELECT, INSERT, UPDATE ON Watu_Inventories.SalesOrder TO 'sales_user'@'localhost';
GRANT SELECT, INSERT, UPDATE ON Watu_Inventories.SalesOrderItem TO 'sales_user'@'localhost';
GRANT INSERT ON Watu_Inventories.StockTransaction TO 'sales_user'@'localhost';

-- Apply the changes
FLUSH PRIVILEGES;
