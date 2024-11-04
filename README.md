# PBI-Kimia-Farma
# Proyek Analisis Kinerja Bisnis Kimia Farma

## Deskripsi Proyek
Ini adalah final project dari Project-Based Internship Rakamin X Kimia Farma. Sebagai seorang Big Data Analytics Intern di Kimia Farma, proyek ini bertujuan untuk mengevaluasi kinerja bisnis Kimia Farma dari tahun 2020 hingga 2023. Proyek ini melibatkan pengolahan dan analisis data dari beberapa dataset yang telah disediakan untuk memberikan wawasan tentang penjualan dan keuntungan cabang-cabang Kimia Farma.

## Tugas :
1. **Impor Dataset ke BigQuery**
   - Dataset yang harus diimpor:
     - [kf_final_transaction.csv]
     - [kf_inventory.csv]
     - [kf_kantor_cabang.csv]
     - [kf_product.csv]
2. **Membuat Tabel Analisa**
   - Tabel analisa akan dibuat berdasarkan hasil agregasi dari keempat tabel yang telah diimpor sebelumnya. Tabel ini berisi kolom-kolom sebagai berikut:
     - `transaction_id`: kode id transaksi
     - `date`: tanggal transaksi dilakukan
     - `branch_id`: kode id cabang Kimia Farma
     - `branch_name`: nama cabang Kimia Farma
     - `kota`: kota cabang Kimia Farma
     - `provinsi`: provinsi cabang Kimia Farma
     - `rating_cabang`: penilaian konsumen terhadap cabang Kimia Farma
     - `customer_name`: nama customer yang melakukan transaksi
     - `product_id`: kode produk obat
     - `product_name`: nama obat
     - `actual_price`: harga obat
     - `discount_percentage`: persentase diskon yang diberikan pada obat
     - `persentase_gross_laba`: persentase laba yang seharusnya diterima dari obat dengan ketentuan harga
     - `nett_sales`: harga setelah diskon
     - `nett_profit`: keuntungan yang diperoleh Kimia Farma
     - `rating_transaksi`: penilaian konsumen terhadap transaksi yang dilakukan

## Dataset
Dataset yang digunakan dalam proyek ini meliputi transaksi, inventaris, cabang, dan produk. Pastikan untuk mengunduh dataset yang diperlukan dari link yang disediakan.

### Struktur Tabel
- **kf_final_transaction**: Menyimpan data transaksi.
- **kf_inventory**: Menyimpan data inventaris produk.
- **kf_kantor_cabang**: Menyimpan informasi tentang cabang-cabang Kimia Farma.
- **kf_product**: Menyimpan informasi tentang produk yang dijual.

## Query dapat dilihat pada file PBI-KF-Tabel analisa.sql
