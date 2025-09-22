-- sample_data.sql
USE ecommerce_task1;

-- Customers
INSERT INTO customers (first_name, last_name, email, phone) VALUES
('Aman','Kumar','aman.kumar@example.com','9876543210'),
('Meera','Sharma','meera.sharma@example.com','9876501234');

-- Categories
INSERT INTO categories (name) VALUES ('Electronics'), ('Clothing');

-- Products
INSERT INTO products (name, description, price, sku, category_id) VALUES
('Wireless Mouse','Optical wireless mouse',499.00,'SKU-MOUSE-001',1),
('T-Shirt','Cotton T-Shirt - Large',299.00,'SKU-TSHIRT-001',2);

-- Addresses
INSERT INTO addresses (customer_id, line1, city, country, postal_code) VALUES
(1,'12 MG Road','Mumbai','India','400001'),
(2,'45 Nehru Street','Delhi','India','110001');

-- Orders
INSERT INTO orders (customer_id, address_id, total_amount) VALUES
(1,1,499.00);

-- Order Items
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1,1,1,499.00);

-- Payments
INSERT INTO payments (order_id, payment_method, amount, status) VALUES
(1,'card',499.00,'completed');
