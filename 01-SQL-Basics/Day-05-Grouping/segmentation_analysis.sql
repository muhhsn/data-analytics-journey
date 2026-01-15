/*
  PROJECT: Retail Store Database (Day 5)
  TOPIC: Grouping & Segmentation
  AUTHOR: Husen (Aspiring Data Analyst)
  ---------------------------------------------------
  DESCRIPTION:
  Script ini menggunakan GROUP BY untuk memecah data menjadi segmen-segmen kecil.
  Ini adalah teknik dasar untuk melihat tren spesifik (bukan general).
*/

-- =============================================
-- 1. ANALISA STOK PER KATEGORI
-- (Pertanyaan: Berapa total stok barang untuk setiap kategori?)
-- =============================================
SELECT category, SUM(stock_quantity) AS total_stock
FROM products
GROUP BY category;
-- Insight: Membantu tim gudang menyeimbangkan stok (misal: jangan kebanyakan Electronics kalau Clothing kosong).

-- =============================================
-- 2. DEMOGRAFI PELANGGAN (Geography Segmentation)
-- (Pertanyaan: Daerah mana yang punya basis pelanggan terbesar?)
-- =============================================
SELECT city, COUNT(customer_id) AS total_customers
FROM customers
GROUP BY city
ORDER BY total_customers DESC;
-- Insight: Jakarta mungkin nomor 1, tapi seberapa jauh bedanya dengan Bandung?

-- =============================================
-- 3. PREFERENSI PEMBAYARAN
-- (Pertanyaan: Metode bayar apa yang paling sering dipakai?)
-- =============================================
SELECT payment_method, COUNT(order_id) AS total_transactions
FROM orders
GROUP BY payment_method;

-- =============================================
-- 4. FILTER HASIL GROUPING (HAVING Clause)
-- (Pertanyaan: Tampilkan hanya kategori yang stoknya MENIPIS / di bawah 50 unit)
-- =============================================
SELECT category, SUM(stock_quantity) AS total_stock
FROM products
GROUP BY category
HAVING SUM(stock_quantity) < 50;
-- Note: Kita pakai HAVING, bukan WHERE, karena kita memfilter hasil 'SUM'.
