/*
  PROJECT: Retail Store Database (Day 4)
  TOPIC: Aggregation Functions (Business Intelligence)
  AUTHOR: Husen (Aspiring Data Analyst)
  ---------------------------------------------------
  DESCRIPTION:
  Script ini menggunakan fungsi Agregasi (SUM, AVG, COUNT, MIN, MAX)
  untuk menghitung Key Performance Indicators (KPI) bisnis.
  
  Fungsi ini mengubah data mentah menjadi wawasan angka (Metrics).
*/

-- =============================================
-- 1. TOTAL OMSET (REVENUE)
-- (Pertanyaan: Berapa total uang yang masuk dari semua penjualan?)
-- =============================================
SELECT SUM(total_amount) AS total_revenue
FROM orders;
-- Penjelasan: Menjumlahkan semua angka di kolom 'total_amount'.

-- =============================================
-- 2. RATA-RATA TRANSAKSI (AOV - Average Order Value)
-- (Pertanyaan: Rata-rata pelanggan belanja habis berapa?)
-- =============================================
SELECT AVG(total_amount) AS average_transaction
FROM orders;
-- Insight: Jika AOV rendah, marketing perlu buat paket bundling biar orang belanja lebih banyak.

-- =============================================
-- 3. TOTAL PELANGGAN AKTIF
-- (Pertanyaan: Berapa banyak pelanggan unik yang kita punya?)
-- =============================================
SELECT COUNT(customer_id) AS total_customers
FROM customers;

-- =============================================
-- 4. CEK HARGA BARANG (Range Harga)
-- (Pertanyaan: Berapa harga barang termurah dan termahal di toko?)
-- =============================================
SELECT 
    MIN(price) AS cheapest_product_price,
    MAX(price) AS most_expensive_product_price
FROM products;
