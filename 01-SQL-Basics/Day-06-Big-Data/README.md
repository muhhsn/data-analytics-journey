# Day 6: Big Data Simulation (Automation) 🤖

## 🎯 Objective
Menggunakan **Python Script** untuk men-generate ratusan (bahkan ribuan) data transaksi palsu secara otomatis. Tujuannya adalah mensimulasikan lingkungan "Big Data" agar analisis SQL selanjutnya lebih menantang dan realistis.

## 🛠️ The Logic (Python -> SQL)
Saya tidak menulis 1000 baris `INSERT INTO` secara manual. Saya menulis logika pemrograman:
1.  **Lists & Random:** Menyediakan bank data (Nama, Kota, Produk) dan mengacaknya.
2.  **Loops:** Mengulang proses pembuatan data sebanyak yang diinginkan (Scalable).
3.  **File Handling:** Menulis hasil output langsung ke format `.sql`.

## 🚀 How to Run
1.  Download file `data_generator.py`.
2.  Jalankan di terminal: `python data_generator.py`.
3.  Script akan menghasilkan file `bulk_data.sql`.
4.  Copy isi file SQL tersebut dan jalankan di database.

---
*Next Step: Day 7 - Python Integration (Connecting Database to Python Environment).*
