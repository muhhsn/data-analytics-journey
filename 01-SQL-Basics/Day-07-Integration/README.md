# Day 7: The Integration (SQL + Python Pipeline) 🔗

## 🎯 Objective
Menghubungkan Database SQL dengan Python untuk membuat **Laporan Otomatis**. Ini adalah simulasi tugas akhir pekan seorang Data Analyst: menarik data, mengolahnya, dan menyajikannya.

## 🚀 Key Concept: JOIN & Automation
Hari ini saya mempelajari dua hal krusial:
1.  **SQL JOIN:** Menggabungkan dua tabel terpisah (`customers` dan `orders`) untuk mendapatkan wawasan yang lebih dalam (misal: Revenue per Kota).
2.  **Python `sqlite3`:** Library bawaan Python untuk "berbicara" dengan database SQL tanpa harus membuka aplikasi database terpisah.

## 📊 Pipeline Logic
Script `weekly_report.py` bekerja dengan alur:
1.  **Connect:** Membuka koneksi ke database `retail_store.db`.
2.  **Extract & Transform:** Menjalankan query `JOIN` yang kompleks untuk menghitung total revenue per kota.
3.  **Load/Present:** Menampilkan hasil yang sudah diformat rapi ke terminal (bisa dikembangkan untuk export ke Excel/PDF).

---
# 🎉 WEEK 1 COMPLETED!
**Foundation Phase Selesai.**
Next: Data Analysis & Visualization dengan Pandas & Matplotlib.
