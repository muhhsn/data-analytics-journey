/*
  PROJECT: Retail Store Database (Day 2)
  TOPIC: Data Injection (Seeding)
  AUTHOR: Husen (Aspiring Data Analyst)
  ---------------------------------------------------
  DESCRIPTION:
  Script ini mengisi tabel customers, products, dan orders dengan data dummy.
  Data ini dirancang untuk simulasi kasus: 
  - Variasi lokasi (Jakarta, Bandung, Surabaya)
  - Variasi kategori produk (Electronics, Clothing)
  - Variasi metode pembayaran
*/

-- =============================================
-- 1. POPULATE CUSTOMERS (5 Data Pelanggan)
-- =============================================
INSERT INTO customers (customer_id, full_name, city, join_date, email) VALUES 
(1, 'Budi Santoso', 'Jakarta', '2025-01-10', 'budi@gmail.com'),
(2, 'Siti Aminah', 'Bandung', '2025-01-11', 'siti.am@yahoo.com'),
(3, 'Rudi Hartono', 'Surabaya', '2025-01-12', 'rudi.h@outlook.com'),
(4, 'Dewi Lestari', 'Jakarta', '2025-01-13', 'dewi.l@gmail.com'),
(5, 'Andi Wijaya', 'Jakarta', '2025-01-14', 'andi.w@gmail.com');

-- =============================================
-- 2. POPULATE PRODUCTS (5 Data Barang)
-- =============================================
INSERT INTO products (product_id, product_name, category, price, stock_quantity) VALUES 
(101, 'Laptop Gaming X', 'Electronics', 15000000.00, 5),
(102, 'Wireless Mouse', 'Electronics', 150000.00, 50),
(103, 'Mechanical Keyboard', 'Electronics', 500000.00, 20),
(104, 'Cotton T-Shirt', 'Clothing', 75000.00, 100),
(105, 'Denim Jeans', 'Clothing', 250000.00, 30);

-- =============================================
-- 3. POPULATE ORDERS (5 Transaksi)
-- =============================================
-- customer_id merujuk pada data di tabel customers
INSERT INTO orders (order_id, customer_id, order_date, total_amount, payment_method) VALUES 
(5001, 1, '2025-01-15', 15000000.00, 'Transfer'), -- Budi beli Laptop
(5002, 2, '2025-01-15', 75000.00, 'E-Wallet'),   -- Siti beli Kaos
(5003, 1, '2025-01-16', 150000.00, 'E-Wallet'),   -- Budi beli Mouse
(5004, 4, '2025-01-16', 250000.00, 'Cash'),       -- Dewi beli Jeans
(5005, 5, '2025-01-17', 500000.00, 'Transfer');   -- Andi beli Keyboard
