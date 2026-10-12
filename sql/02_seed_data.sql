-- =============================================================
-- Online Store Database - Sample data
-- =============================================================

USE OnlineStoreDB;

INSERT INTO Customers (customer_name, email, phone) VALUES
('أحمد علي',      'ahmed@email.com',  '0501112222'),
('سارة محمد',     'sara@email.com',   '0503334444'),
('خالد عبد الله', 'khaled@email.com', '0505556666'),
('ريم سلطان',     'reem@email.com',   '0507778888'),
('فهد منصور',     'fahad@email.com',  '0509990000');

INSERT INTO Products (product_name, price, stock) VALUES
('لاب توب',        3500.00, 10),
('هاتف ذكي',       2500.00, 15),
('سماعة لاسلكية',   450.00, 30),
('شاحن سريع',       120.00, 50),
('ساعة ذكية',       850.00, 20);

INSERT INTO Orders (customer_id, product_id, order_date, quantity) VALUES
(1, 1, '2025-05-01', 1),  -- laptop
(2, 3, '2025-06-02', 2),  -- 2 wireless headphones
(3, 2, '2025-07-03', 1),  -- smartphone
(4, 5, '2025-08-04', 1),  -- smartwatch
(5, 4, '2025-09-05', 3);  -- 3 fast chargers
