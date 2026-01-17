import sqlite3
import datetime

# --- SETUP DATABASE SEMENTARA (Simulasi) ---
# Di dunia nyata, ini connect ke Server Kantor. 
# Di sini, kita bikin file db lokal biar scriptnya bisa jalan di laptop lo.
DB_NAME = "retail_store_day7.db"

def create_and_populate_db():
    print("🛠️  Membangun Database & Schema...")
    conn = sqlite3.connect(DB_NAME)
    cursor = conn.cursor()
    
    # 1. Bikin Tabel (Sama kayak Day 1)
    cursor.execute('''CREATE TABLE IF NOT EXISTS customers 
                     (customer_id INTEGER PRIMARY KEY, full_name TEXT, city TEXT)''')
    cursor.execute('''CREATE TABLE IF NOT EXISTS orders 
                     (order_id INTEGER PRIMARY KEY, customer_id INTEGER, total_amount REAL)''')
    
    # 2. Isi Data Dummy (Gabungan Day 2 & 6)
    # Kita isi manual dikit aja buat tes logic JOIN
    customers = [(1, 'Budi', 'Jakarta'), (2, 'Siti', 'Bandung'), (3, 'Agus', 'Jakarta')]
    orders = [
        (101, 1, 15000000), # Budi beli Laptop
        (102, 2, 50000),    # Siti beli Mouse
        (103, 1, 500000),   # Budi beli Keyboard
        (104, 3, 250000)    # Agus beli Jeans
    ]
    
    cursor.executemany('INSERT INTO customers VALUES (?,?,?)', customers)
    cursor.executemany('INSERT INTO orders VALUES (?,?,?)', orders)
    
    conn.commit()
    conn.close()
    print("✅ Database siap!")

def generate_report():
    print("\n📊 MENGHASILKAN LAPORAN MINGGUAN...")
    print("="*40)
    
    conn = sqlite3.connect(DB_NAME)
    cursor = conn.cursor()
    
    # --- QUERY SAKTI (JOIN) ---
    # Menggabungkan data Customer (Kota) dengan Order (Uang)
    # Logic: "Tolong ambil nama kota dan total belanjaannya, gabungin tabelnya berdasarkan ID customer"
    query = '''
    SELECT 
        c.city, 
        COUNT(o.order_id) as total_transaksi,
        SUM(o.total_amount) as total_revenue
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.city
    ORDER BY total_revenue DESC
    '''
    
    cursor.execute(query)
    results = cursor.fetchall()
    
    # Cetak Hasil Rapi
    print(f"{'KOTA':<15} | {'TRANSAKSI':<10} | {'REVENUE (RP)':<15}")
    print("-" * 45)
    
    for row in results:
        kota = row[0]
        transaksi = row[1]
        revenue = f"Rp {row[2]:,.0f}" # Format Rupiah
        print(f"{kota:<15} | {transaksi:<10} | {revenue:<15}")
        
    print("="*40)
    print(f"Laporan dibuat otomatis pada: {datetime.datetime.now()}")
    conn.close()

if __name__ == "__main__":
    # Jalankan Pipeline
    create_and_populate_db()
    generate_report()
