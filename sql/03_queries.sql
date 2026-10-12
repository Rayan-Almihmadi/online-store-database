-- =============================================================
-- Online Store Database - Analysis queries
-- =============================================================

USE OnlineStoreDB;

-- Q1: Products priced above 500 SAR
SELECT product_name, price
FROM Products
WHERE price > 500.00;

-- Q2: Look up a customer by email
SELECT *
FROM Customers
WHERE email = 'sara@email.com';

-- Q3: Number of product types in the catalog
SELECT COUNT(*) AS total_product_types
FROM Products;

-- Q4: Total quantity ordered per product
SELECT product_id, SUM(quantity) AS total_quantity_ordered
FROM Orders
GROUP BY product_id;

-- Q5: Customer name, order date and quantity (JOIN)
SELECT c.customer_name, o.order_date, o.quantity
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id;

-- Q6: Products that have been ordered at least once (subquery)
SELECT *
FROM Products
WHERE product_id IN (SELECT DISTINCT product_id FROM Orders);

-- View: readable order report (customer + product + quantity)
CREATE OR REPLACE VIEW Order_Summary_Report AS
SELECT o.order_id, c.customer_name, p.product_name, o.quantity, o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products  p ON o.product_id  = p.product_id;

SELECT * FROM Order_Summary_Report;
