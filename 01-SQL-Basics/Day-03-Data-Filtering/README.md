# Day 3: The Data Detective (Filtering & Auditing) 🕵️‍♂️

## 🎯 Objective
Belajar menyaring (filtering) jutaan data menjadi informasi yang relevan menggunakan SQL. Ini adalah simulasi menjawab pertanyaan bisnis dari berbagai departemen (Gudang, Marketing, Finance).

## 🧠 Analyst Mindset
Seorang Analyst tidak hanya menampilkan data, tapi **menjawab pertanyaan**.
- **Tim Gudang bertanya:** "Barang apa yang harus segera dipesan ulang?" -> Solusi: `WHERE stock_quantity < 10`.
- **Tim Marketing bertanya:** "Siapa target audiens kita di ibu kota?" -> Solusi: `WHERE city = 'Jakarta'`.

## 🛠️ Key SQL Commands Used
| Command | Fungsi | Contoh Penggunaan |
| :--- | :--- | :--- |
| **WHERE** | Filter baris berdasarkan kondisi tertentu. | `WHERE city = 'Jakarta'` |
| **Comparison Operators** | Membandingkan nilai (`>`, `<`, `=`). | `WHERE price > 50000` |
| **LIKE / Wildcards** | Mencari pola teks (Pattern Matching). | `LIKE '%@gmail.com'` (Mencari email Gmail) |
| **AND / OR** | Menggabungkan beberapa kondisi logika. | (Akan digunakan di analisis lanjut) |

---
*Next Step: Business Intelligence 101 - Menghitung Total Omset & Rata-rata (Aggregation).*
