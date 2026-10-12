-- =============================================================
-- Online Store Database - Schema
-- WARNING: this script drops and recreates the database.
-- =============================================================

DROP DATABASE IF EXISTS OnlineStoreDB;
CREATE DATABASE OnlineStoreDB;
USE OnlineStoreDB;

CREATE TABLE Customers (
    customer_id   INT AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    email         VARCHAR(100) NOT NULL UNIQUE,
    phone         VARCHAR(15),
    CONSTRAINT PK_Customers PRIMARY KEY (customer_id)
);

CREATE TABLE Products (
    product_id   INT AUTO_INCREMENT,
    product_name VARCHAR(100)  NOT NULL,
    price        DECIMAL(10,2) NOT NULL,
    stock        INT           NOT NULL,
    CONSTRAINT PK_Products PRIMARY KEY (product_id),
    CONSTRAINT CHK_Price CHECK (price > 0),
    CONSTRAINT CHK_Stock CHECK (stock >= 0)
);

CREATE TABLE Orders (
    order_id    INT AUTO_INCREMENT,
    customer_id INT  NOT NULL,
    product_id  INT  NOT NULL,
    order_date  DATE NOT NULL,
    quantity    INT  NOT NULL,
    CONSTRAINT PK_Orders PRIMARY KEY (order_id),
    CONSTRAINT FK_Orders_Customers FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id) ON DELETE CASCADE,
    CONSTRAINT FK_Orders_Products FOREIGN KEY (product_id)
        REFERENCES Products(product_id) ON DELETE CASCADE,
    CONSTRAINT CHK_Quantity CHECK (quantity > 0)
);
