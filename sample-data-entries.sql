-- Suppliers
INSERT INTO Supplier (name, contact_name, phone, email, address) VALUES
('Global Supplies Co.', 'Alice Muthoni', '0712345678', 'alice@globalsupplies.com', 'Nairobi, Kenya'),
('Tech Distributors Ltd', 'Brian Otieno', '0722123456', 'brian@techdistro.com', 'Mombasa, Kenya');

-- Categories
INSERT INTO Category (name) VALUES
('Electronics'),
('Furniture'),
('Stationery');

-- Products
INSERT INTO Product (name, category_id, supplier_id, price, description) VALUES
('Laptop - Dell Inspiron', 1, 2, 75000.00, '15-inch, Core i5, 8GB RAM, 256GB SSD'),
('Office Chair', 2, 1, 9500.00, 'Ergonomic chair with adjustable height'),
('Notebook - A5', 3, 1, 120.00, 'Ruled notebook, 100 pages'),
('Wireless Mouse', 1, 2, 1500.00, '2.4GHz optical mouse');

-- Stock
INSERT INTO Stock (product_id, quantity) VALUES
(1, 10),
(2, 25),
(3, 200),
(4, 50);

-- Purchase Orders
INSERT INTO PurchaseOrder (supplier_id, order_date, status) VALUES
(1, '2024-10-01', 'Received'),
(2, '2024-10-05', 'Pending');

-- Purchase Order Items
INSERT INTO PurchaseOrderItem (order_id, product_id, quantity, cost) VALUES
(1, 2, 10, 9000.00),
(1, 3, 100, 100.00),
(2, 1, 5, 72000.00),
(2, 4, 20, 1400.00);
