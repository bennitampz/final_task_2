# Final_Project_Second (Membangun Blog Sederhana Menggunakan laravel Blade serta Laravel UI)

##  Konsep: Recipes

## Tentang Proyek Ini

Final_Project_Second adalah aplikasi web yang dibangun menggunakan [Laravel](https://laravel.com), sebuah framework PHP yang kuat dan elegan. Proyek ini bertujuan untuk menyediakan platform bagi pengguna untuk menemukan dan berbagi resep masakan dari seluruh dunia.

## Fitur

- **Temukan Resep**: Jelajahi berbagai resep menarik yang dibagikan oleh komunitas.
- **Bagikan Resep Anda**: Unggah dan bagikan resep favorit Anda dengan pengguna lain.
- **Autentikasi Aman**: Sistem registrasi dan login yang aman bagi pengguna.
- **Desain Responsif**: Antarmuka pengguna yang menarik dan responsif dengan Tailwind CSS.

## Persyaratan Sistem

- PHP >= 8.0
- Composer
- MySQL atau database lain yang didukung oleh Laravel
- Node.js dan NPM (untuk pengelolaan aset frontend)
- Server web (Apache, Nginx, dll.)

## Instalasi

Ikuti langkah-langkah berikut untuk menginstal dan menjalankan proyek ini di lingkungan lokal Anda.

### 1. Clone Repository

```bash
git clone https://github.com/username/Final_Project_Second.git
```
### 2. Pindah ke Direktori Proyek
```bash
cd Final_Project_Second
```
### 3. Instal Dependensi PHP
```bash
composer install
```
### 4. Instal Dependensi Node.js
```bash
npm install
```
### 5. Salin File Environment
```bash
cp .env.example .env
```
### 6. Generate Application Key
```bash
php artisan key:generate
```
### 7. Konfigurasi Database
Saya telah menyediakan dummy database silahkan jika ingin digunakan
```bash
Edit file .env dan sesuaikan detail database Anda:
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=resep_sedap_db
DB_USERNAME=root
DB_PASSWORD=
```
### 8. Migrasi dan Seed Database
```bash
php artisan migrate --seed
```
### 9. Build Assets Frontend
Untuk mode pengembangan:
```bash
npm run dev
```
### 10. Menjalankan Server
```bash
php artisan serve
```
Akses aplikasi melalui browser di http://localhost:8000.

### 11. Penggunaan
**Beranda**: Menampilkan resep terbaru dan populer.
**Registrasi/Login**: Daftar sebagai pengguna baru atau masuk jika sudah memiliki akun.
**Profil**: Lihat dan edit profil Anda.
**Tambah Resep**: Unggah resep baru melalui formulir yang disediakan.
**Pencarian**: Cari resep berdasarkan nama atau kategori.

### 12. Struktur Proyek
Beberapa file dan direktori penting:

**resources/views/welcome.blade.php**: Halaman beranda aplikasi.
**config/database.php**: Konfigurasi database aplikasi.
**bootstrap/cache/services.php**: File cache layanan.

### 13. Tujuan 
**Agar dapat menerapkan fitur blade serta laravel ui ke dalam project**
**Progress dan Bukti pengerjaan:**
### A. fitur authentication menggunakan laravel UI

**A.Laravel UI package installation**

![Screenshot 2024-12-16 202250](https://github.com/user-attachments/assets/fc750979-9a8c-4d90-b7e2-b193a669d900)

**B.Login authentication**

![{00AEC378-E442-4855-8045-76A305AD4A6A}](https://github.com/user-attachments/assets/33bdde66-d6f5-4b6e-a729-d341802449a0)

**C.Register authentication**

![{8236324C-E8D0-4B03-B13D-8D539D8627B8}](https://github.com/user-attachments/assets/784ccc92-6419-4817-bbe5-67031cb2768c)

**D.Edit Password**

![{3AF3FB5F-9DD8-4F50-A7FC-02CCA061AB3A}](https://github.com/user-attachments/assets/86ffd47e-7512-4986-8d27-93263ba9b907)

**E.Show Profile**

![{2A1E0D48-BF8C-4C26-B1E0-DBB6C69219D5}](https://github.com/user-attachments/assets/c794629b-2141-4478-a69c-12675a17ae86)


### B. Buatlah fungsional CRUD article serta category  dan juga Unit testing setiap halaman crud dan fitur

**A.Fungsi menambahkan category**

![{BFE7C938-C3B8-4A46-B972-91DBFE90E49F}](https://github.com/user-attachments/assets/b365d9b6-eef0-45c0-82a3-381c2a959e4b)

**B.Fungsi menambahahkan articles(recipe)**

![{A1B8144D-B544-4909-9A5D-6776E3F9B05A}](https://github.com/user-attachments/assets/e11f29c5-ad03-4204-be98-447131420369)

**C.Fungsi melihat seluruh recipes yang dibuat user tertentu editing serta menghapus konten**

1. List recipe
   
![{CF2BDAB4-7D3D-43F5-9C4D-26D7A8F9A054}](https://github.com/user-attachments/assets/807250f4-608a-403d-919c-08f97650362e)

2. Edit recipe (update)
   
![{4F8D2E03-E4E9-4932-B972-4CCB1AEF4427}](https://github.com/user-attachments/assets/6c05ddc3-6039-4503-a2cc-d71bd5a7b1f9)

3. Delete recipe
   
![{D0BFABCA-95C5-4A2E-BEA1-43512B8149F2}](https://github.com/user-attachments/assets/12aae0a7-dcdf-4860-9dc4-bfd09e37d27f)


**D.Fungsi melihat seluruh category yang dibuat user editing serta menghapus konten**

1. List Category

![{5DAFDD17-9BCF-4597-9E3A-AAA17D32FEF1}](https://github.com/user-attachments/assets/609643f4-8847-4d16-8be6-1c3f47d50dbe)

2. Edit Category (update)

![{BBA05D1B-ACFB-48E3-B861-14D55968A711}](https://github.com/user-attachments/assets/270691cc-4d45-4df0-900b-e02c504b2acb)

3. Delete Category

![{918AF1D8-3F87-4315-ADB2-41B055D60582}](https://github.com/user-attachments/assets/2009d2a3-15f0-42e8-bc37-2fe01ed992e9)

**E.Fungsi Show recipe per {id}**

![{461AA32D-E4B0-46C1-8E07-78E7E6CACACE}](https://github.com/user-attachments/assets/200a90b6-54ac-431e-898e-8eb2591cd4a0)

**F.Fungsi Show Category per contain {id}**

![{A12AB4C9-940F-4EF2-8FB3-B7270721EA30}](https://github.com/user-attachments/assets/a38d9695-fe1e-478f-8bfe-2ab5b2b786d8)

**G.Explore All Category**

![{F6B89E4B-1835-40A4-A56A-610EDE7AC294}](https://github.com/user-attachments/assets/340c3390-51da-47b9-9e96-6ddee2534470)

**H.Explore All Recipe**

![{4CB13BA8-478B-4D73-9F5C-FF9DA3D027D5}](https://github.com/user-attachments/assets/5a292dc4-98de-43e1-a007-9f43e998328a)

### C. Gunakan laravel blade untuk membuat templatenya

![{EF947292-7B3F-4166-831C-6D2F90CED365}](https://github.com/user-attachments/assets/d12a8064-0d43-4d0d-b81b-40ec4b8daaa4)

### D. relasi laravel eloquent untuk menghubungkan relasi antar tabel

**1.Di CategoryController.php**
![{D9204631-31BC-4CB0-B595-EDA3EA9B1DD7}](https://github.com/user-attachments/assets/6d8d282e-293b-4c9e-960e-1ffabda21992)

![{5DCCEE39-B798-4448-BBE2-284F63BBC2F2}](https://github.com/user-attachments/assets/b820157f-4216-40eb-9ac2-c98e7b1c9e9a)

Ini menunjukkan bahwa model Kategori memiliki hubungan dengan:

a.articles (hasMany)

b.user (belongsTo)

**2.Di ArticleResepController.php**

![{278A5264-D0B7-4349-8B69-A53E81D7FC1E}](https://github.com/user-attachments/assets/c15fadef-17c1-403d-8101-7fb777454be9)

![{ED68291A-6862-4809-A1F8-A08D48D3193F}](https://github.com/user-attachments/assets/782491e6-5571-4dfe-987a-0ab779ae1c77)

Ini menunjukkan bahwa model Kategori memiliki hubungan dengan:

a.user (belongsTo)

b.category (belongsTo)

Penggunaan metode with() dari Eloquent untuk eager loading dan withCount() untuk menghitung model terkait dengan jelas menunjukkan bahwa hubungan yang tepat telah diatur antara:

a.Users and Categories

b.Users and Articles

c.Categories and Articles

### E. seeder untuk membuat sample user

![{81AFC8E1-9E12-4A0F-BE35-9AB53A7ABF8A}](https://github.com/user-attachments/assets/97bbb709-ada8-4a51-a4bf-c4e2c85e1072)
![{12B6BC3E-FAB1-4884-8FEC-A1839EECD770}](https://github.com/user-attachments/assets/0f2178cd-ad72-4952-8c3f-d2ac585e7658)

Ini akan membuat satu pengguna spesifik dengan kredensial:

Email: test@example.com

Password: password123

### 14. Kontribusi
Kontribusi sangat diterima! Anda dapat melakukan fork repository ini dan membuat pull request untuk perbaikan atau penambahan fitur.

### 15. Masalah dan Saran
Jika Anda menemukan masalah atau memiliki saran, silakan buka Issue baru di repository ini.

### 16. Lisensi
Proyek ini dilisensikan di bawah MIT License.

## 17. Kredit
Laravel
Tailwind CSS
Font Awesome
Gambar latar belakang oleh Unsplash
