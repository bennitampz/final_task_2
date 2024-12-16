# Final_Project_Second

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
Copy

Apply

README.md
2. Pindah ke Direktori Proyek
cd Final_Project_Second

Copy

Execute

3. Instal Dependensi PHP
composer install

Copy

Execute

4. Instal Dependensi Node.js
npm install

Copy

Execute

5. Salin File Environment
cp .env.example .env

Copy

Execute

Note: Jika Anda menggunakan Windows, gunakan perintah copy sebagai gantinya.

6. Generate Application Key
php artisan key:generate

Copy

Execute

7. Konfigurasi Database
Edit file .env dan sesuaikan detail database Anda:

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=nama_database_anda
DB_USERNAME=username_database_anda
DB_PASSWORD=password_database_anda

Copy

Apply

8. Migrasi dan Seed Database
php artisan migrate --seed

Copy

Execute

9. Build Assets Frontend
Untuk mode pengembangan:

npm run dev

Copy

Execute

Untuk mode produksi:

npm run build

Copy

Execute

10. Menjalankan Server
php artisan serve

Copy

Execute

Akses aplikasi melalui browser di http://localhost:8000.

Penggunaan
Beranda: Menampilkan resep terbaru dan populer.
Registrasi/Login: Daftar sebagai pengguna baru atau masuk jika sudah memiliki akun.
Profil: Lihat dan edit profil Anda.
Tambah Resep: Unggah resep baru melalui formulir yang disediakan.
Pencarian: Cari resep berdasarkan nama atau kategori.
Struktur Proyek
Beberapa file dan direktori penting:

resources/views/welcome.blade.php: Halaman beranda aplikasi.
config/database.php: Konfigurasi database aplikasi.
bootstrap/cache/services.php: File cache layanan.
Kontribusi
Kontribusi sangat diterima! Anda dapat melakukan fork repository ini dan membuat pull request untuk perbaikan atau penambahan fitur.

Masalah dan Saran
Jika Anda menemukan masalah atau memiliki saran, silakan buka Issue baru di repository ini.

Lisensi
Proyek ini dilisensikan di bawah MIT License.

Kredit
Laravel
Tailwind CSS
Font Awesome
Gambar latar belakang oleh Unsplash
