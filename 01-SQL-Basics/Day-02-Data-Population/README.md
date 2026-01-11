# Day 2: Populating the Database (Data Injection) 💉

## 🎯 Objective
Mengisi "rumah kosong" (Database Schema) dengan data dummy yang representatif untuk persiapan analisis. Data ini mencakup variasi lokasi pelanggan dan kategori produk untuk simulasi query filtering besok.

## 🧠 Engineering Logic
Dalam tahap ini, saya memastikan data yang dimasukkan logis:
1.  **Relational Consistency:** `customer_id` di tabel `orders` (transaksi) harus sesuai dengan ID yang ada di tabel `customers`.
2.  **Data Types Compliance:** Format tanggal menggunakan standar ISO (`YYYY-MM-DD`) agar bisa diurutkan secara kronologis.
3.  **Bulk Insert:** Menggunakan syntax `INSERT INTO ... VALUES (), (), ()` untuk efisiensi memasukkan banyak data sekaligus.

## 📊 Dataset Preview
- **Total Customers:** 5 (Dominasi area Jakarta).
- **Total Products:** 5 (Kategori Electronics & Clothing).
- **Total Orders:** 5 Transaksi tercatat.

---
*Next Step: Filtering Data (WHERE Clause) to find specific insights.*
