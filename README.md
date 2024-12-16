# Final_Project_Second (Membangun Blog Sederhana Menggunakan laravel Blade serta Laravel UI)

## Konsep: Recipes

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

### Tujuan 
**Agar dapat menerapkan fitur blade serta laravel ui ke dalam project**
**Progress dan Bukti pengerjaan:**
### A. fitur authentication menggunakan laravel UI

**a.Laravel UI package installation**

![Screenshot 2024-12-16 202250](https://github.com/user-attachments/assets/fc750979-9a8c-4d90-b7e2-b193a669d900)

**b.Login authentication**

![{00AEC378-E442-4855-8045-76A305AD4A6A}](https://github.com/user-attachments/assets/33bdde66-d6f5-4b6e-a729-d341802449a0)

**c.Register authentication**

![{8236324C-E8D0-4B03-B13D-8D539D8627B8}](https://github.com/user-attachments/assets/784ccc92-6419-4817-bbe5-67031cb2768c)


### 13. Kontribusi
Kontribusi sangat diterima! Anda dapat melakukan fork repository ini dan membuat pull request untuk perbaikan atau penambahan fitur.

### 14. Masalah dan Saran
Jika Anda menemukan masalah atau memiliki saran, silakan buka Issue baru di repository ini.

### 15. Lisensi
Proyek ini dilisensikan di bawah MIT License.

## 16. Kredit
Laravel
Tailwind CSS
Font Awesome
Gambar latar belakang oleh Unsplash
