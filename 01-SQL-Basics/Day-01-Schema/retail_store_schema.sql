/*
  PROJECT: Retail Store Database (Day 1)
  TOPIC: Database Schema Design
  AUTHOR: Husin (Aspiring Data Analyst)
  ---------------------------------------------------
  DESCRIPTION:
  Script ini mendefinisikan struktur tabel untuk sistem Point of Sales (POS) sederhana.
  Fokus pada penggunaan Primary Key, Tipe Data yang tepat, dan Not Null constraints.
*/

-- 1. Create Customers Table
-- Menyimpan data profil pelanggan
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    city VARCHAR(50),
    join_date DATE,
    email VARCHAR(100)
);

-- 2. Create Products Table
-- Menyimpan data inventaris barang
CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock_quantity INTEGER DEFAULT 0
);

-- 3. Create Orders Table
-- Menyimpan data transaksi harian
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER, -- Foreign Key reference (Logic only for now)
    order_date DATE NOT NULL,
    total_amount DECIMAL(15, 2),
    payment_method VARCHAR(20)
);
