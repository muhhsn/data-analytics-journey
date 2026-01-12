/*
  PROJECT: Retail Store Database (Day 3)
  TOPIC: Data Filtering & Auditing
  AUTHOR: Husen (Aspiring Data Analyst)
  ---------------------------------------------------
  DESCRIPTION:
  Script ini mensimulasikan permintaan data dari tim Bisnis & Gudang.
  Menggunakan klausa WHERE, Operasi Logika (AND/OR), dan Pattern Matching (LIKE).
*/

-- =============================================
-- CASE 1: INVENTORY ALERT SYSTEM
-- (Permintaan Tim Gudang: Cari barang yang stoknya menipis)
-- =============================================
SELECT product_name, category, stock_quantity
FROM products
WHERE stock_quantity < 10; 
-- Insight: Ini akan memunculkan 'Laptop Gaming X' (Stok tinggal 5)

-- =============================================
-- CASE 2: TARGETED MARKETING CAMPAIGN
-- (Permintaan Tim Marketing: Cari pelanggan di Jakarta untuk promo lokal)
-- =============================================
SELECT full_name, email, city
FROM customers
WHERE city = 'Jakarta';

-- =============================================
-- CASE 3: HIGH VALUE TRANSACTIONS
-- (Permintaan Tim Finance: Cari transaksi di atas Rp 1.000.000)
-- =============================================
SELECT * FROM orders
WHERE total_amount >= 1000000;

-- =============================================
-- CASE 4: DATA INTEGRITY CHECK (Pattern Matching)
-- (Memastikan format email valid / Mencari pengguna Gmail)
-- =============================================
SELECT full_name, email
FROM customers
WHERE email LIKE '%@gmail.com';
