inventory_tracker.sql
-- Inventory Tracker Management System
-- Author: Thaniska U R

CREATE DATABASE inventory_tracker;
USE inventory_tracker;
CREATE TABLE Suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,
    contact_person VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50)
);

CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT,
    reorder_level INT,
    expiry_date DATE,
    supplier_id INT,
    FOREIGN KEY (supplier_id)
    REFERENCES Suppliers(supplier_id)
);

CREATE TABLE Sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    quantity_sold INT,
    sale_price DECIMAL(10,2),
    sale_date DATE,
    FOREIGN KEY (product_id)
    REFERENCES Products(product_id)
);

INSERT INTO Suppliers
(supplier_name, contact_person, phone, city)
VALUES
('ABC Traders', 'Rahul', '9876543210', 'Coimbatore'),
('Fresh Dairy', 'Kumar', '9876543211', 'Erode'),
('Tech World', 'Arun', '9876543212', 'Chennai'); ALTER);

INSERT INTO Products
(product_name, category, price, quantity, reorder_level, expiry_date, supplier_id)
VALUES
('Rice', 'Food', 60, 100, 20, '2026-12-31', 1),
('Milk', 'Dairy', 30, 5, 10, '2026-06-15', 2),
('Eggs', 'Dairy', 8, 20, 10, '2026-06-12', 2),
('Laptop', 'Electronics', 50000, 10, 2, '2030-01-01', 3);





