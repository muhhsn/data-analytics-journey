# Day 5: Grouping & Segmentation (Analisis Per Segmen) 🍰

## 🎯 Objective
Belajar memecah data besar menjadi kelompok-kelompok kecil (Buckets) menggunakan `GROUP BY` untuk melihat pola yang lebih spesifik.

## 🧠 Analyst Mindset
Analisa "Rata-rata Gabungan" seringkali bias. Seorang Analyst harus bisa melihat performa **PER** segmen.
- Daripada tanya: "Berapa total user kita?"
- Lebih baik tanya: "Berapa user kita **PER** kota?" (Untuk menentukan lokasi iklan).

## 🛠️ Key SQL Commands
| Command | Fungsi | Logika Sederhana |
| :--- | :--- | :--- |
| **GROUP BY** | Mengelompokkan baris yang punya nilai sama. | "Kumpulkan semua 'Jakarta' jadi satu tumpukan." |
| **ORDER BY** | Mengurutkan hasil (DESC = Besar ke Kecil). | "Tampilkan kota dengan user terbanyak di paling atas." |
| **HAVING** | Filter data **SETELAH** dikelompokkan. | "Buang tumpukan yang isinya sedikit." |

## 💡 Interview Cheat Sheet: WHERE vs HAVING
* **WHERE**: Filter data mentah (Sebelum Grouping). Contoh: `WHERE city = 'Jakarta'`.
* **HAVING**: Filter hasil hitungan (Setelah Grouping). Contoh: `HAVING COUNT(user) > 100`.

---
*Next Step: Day 6 - Big Data Simulation (Generating 1000+ Random Transactions).*
