INSERT INTO customers (customer_name, state) VALUES
('Rahul Sharma', 'Maharashtra'),
('Anjali Verma', 'Karnataka'),
('Vikram Singh', 'Delhi'),
('Priya Nair', 'Kerala'),
('Amit Patel', 'Gujarat'),
('Sneha Reddy', 'Telangana'),
('Arjun Mehta', 'Rajasthan'),
('Neha Kapoor', 'Punjab'),
('Rohan Das', 'West Bengal'),
('Kavya Iyer', 'Tamil Nadu');


INSERT INTO products (product_name, price, cogs, category, brand) VALUES
('iPhone 14', 79999.00, 65000.00, 'Electronics', 'Apple'),
('Galaxy S23', 74999.00, 60000.00, 'Electronics', 'Samsung'),
('Running Shoes', 2999.00, 1500.00, 'Footwear', 'Nike'),
('Bluetooth Speaker', 2499.00, 1200.00, 'Electronics', 'JBL'),
('Laptop Backpack', 1999.00, 900.00, 'Accessories', 'Skybags'),
('Smart Watch', 4999.00, 2500.00, 'Electronics', 'Noise'),
('Office Chair', 8999.00, 5000.00, 'Furniture', 'GreenSoul'),
('Gaming Mouse', 1499.00, 700.00, 'Electronics', 'Logitech'),
('Cotton T-Shirt', 799.00, 300.00, 'Clothing', 'Puma'),
('Water Bottle', 499.00, 200.00, 'Home & Kitchen', 'Milton');


INSERT INTO sales (order_date, customer_id, product_id, quantity, price_per_unit, order_status) VALUES
('2024-01-10', 1, 1, 1, 79999.00, 'Delivered'),
('2024-01-12', 2, 3, 2, 2999.00, 'Delivered'),
('2024-01-15', 3, 2, 1, 74999.00, 'Shipped'),
('2024-01-18', 4, 5, 1, 1999.00, 'Delivered'),
('2024-01-20', 5, 4, 3, 2499.00, 'Cancelled'),
('2024-01-22', 6, 6, 1, 4999.00, 'Delivered'),
('2024-01-25', 7, 7, 1, 8999.00, 'Processing'),
('2024-01-27', 8, 8, 2, 1499.00, 'Delivered'),
('2024-01-29', 9, 9, 4, 799.00, 'Delivered'),
('2024-02-01', 10, 10, 5, 499.00, 'Shipped');


INSERT INTO payments (order_id, payment_date, payment_status) VALUES
(1, '2024-01-10', 'Completed'),
(2, '2024-01-12', 'Completed'),
(3, '2024-01-15', 'Pending'),
(4, '2024-01-18', 'Completed'),
(5, '2024-01-20', 'Refunded'),
(6, '2024-01-22', 'Completed'),
(7, '2024-01-25', 'Pending'),
(8, '2024-01-27', 'Completed'),
(9, '2024-01-29', 'Completed'),
(10, '2024-02-01', 'Completed');


INSERT INTO shippings (order_id, shipping_date, return_date, shipping_provider, delivery_status) VALUES
(1, '2024-01-11', NULL, 'BlueDart', 'Delivered'),
(2, '2024-01-13', NULL, 'Delhivery', 'Delivered'),
(3, '2024-01-16', NULL, 'DTDC', 'In Transit'),
(4, '2024-01-19', NULL, 'Ekart', 'Delivered'),
(5, '2024-01-21', '2024-01-25', 'Delhivery', 'Returned'),
(6, '2024-01-23', NULL, 'BlueDart', 'Delivered'),
(7, '2024-01-26', NULL, 'DTDC', 'Processing'),
(8, '2024-01-28', NULL, 'Ekart', 'Delivered'),
(9, '2024-01-30', NULL, 'BlueDart', 'Delivered'),
(10, '2024-02-02', NULL, 'Delhivery', 'Shipped');
