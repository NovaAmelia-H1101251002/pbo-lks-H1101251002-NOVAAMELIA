
# Perpustakaan REST API — Portofolio Praktikum PBO

Proyek REST API untuk sistem informasi perpustakaan, dibangun dengan PHP modern (PSR-4, SOLID, MVC) dan frontend terpisah menggunakan Tailwind CSS. Dibuat sebagai Lembar Kerja Mahasiswa (LKS) mata kuliah Pemrograman Berbasis Objek, Program Studi Sistem Informasi, FMIPA Universitas Tanjungpura.

## Identitas

|                |                                  |
| -------------- | -------------------------------- |
| Nama           | Nova Amelia                      |
| NIM            | H1101251002                      |
| Kelas          | B                                |
| Program Studi  | Sistem Informasi                 |
| Mata Kuliah    | Pemrograman Berbasis Objek (PBO) |
| Dosen Pengampu | Syahru Rahmayuda, M.Kom          |

## Daftar Fitur

- **CRUD Buku** — tambah, lihat, ubah, hapus data buku lewat REST API (`/api/books`)
- **CRUD Kategori** — tambah, lihat, ubah, hapus kategori buku (`/api/categories`)
- **Validasi input** — menolak data tidak valid dengan kode status 422 dan pesan error yang jelas
- **Error handling** — status 404 untuk data/endpoint tidak ditemukan, 405 untuk method tidak didukung
- **Arsitektur berlapis** — Controller → Service → Repository, mengikuti prinsip SOLID (khususnya SRP dan DIP)
- **Dependency Injection** — menggunakan Container sederhana (mirip Service Container Laravel)
- **Dashboard frontend** — statistik total buku dan kategori secara real-time
- **Frontend terpisah** — dibangun dengan HTML, Tailwind CSS, dan vanilla JavaScript (ES Modules), terhubung ke backend lewat `fetch()` dan diamankan dengan CORS
- **Pengujian berlapis** — diuji manual dengan cURL, Postman, dan skrip otomatis (`tests/api_test.sh`)

## Teknologi yang Digunakan

- PHP 8+ (tanpa framework, PSR-4 autoload via Composer)
- MySQL / MariaDB
- HTML5, Tailwind CSS (CDN), JavaScript ES Modules
- cURL, ThunderClient, Bash , Python JSON Tool (untuk testing)

# Struktur Proyek

pbo-lks-H1101251002-NOVAAMELIA/
├── frontend-perpustakaan/
│   ├── css/
│   │   └── custom.css
│   ├── js/
│   │   ├── pages/
│   │   │   ├── books.js
│   │   │   ├── categories.js
│   │   │   └── dashboard.js
│   │   ├── api.js
│   │   ├── app.js
│   │   ├── config.js
│   │   └── utils.js
│   └── index.html
├── rest-api-perpustakaan/
│   ├── database/
│   │   └── schema.sql
│   ├── public/
│   │   └── index.php
│   ├── src/
│   │   ├── Config/
│   │   ├── Contracts/
│   │   ├── Controllers/
│   │   ├── Core/
│   │   ├── Database/
│   │   ├── Models/
│   │   ├── Repositories/
│   │   └── Services/
│   ├── tests/
│   │   └── api_test.sh
│   ├── vendor/
│   ├── .env
│   ├── .env.example
│   ├── composer.json
│   └── test_router.php
├── screenshot-final/
│   ├── dashboard.png
│   ├── halaman-buku.png
│   └── halaman-kategori.png
├── .gitignore
├── composer.lock
└── README.md

# Cara Menjalankan Proyek

1. Setup Database MySQL
   Pastikan service MySQL di Laragon/XAMPP sudah aktif.

Buat database dan import file schema SQL melalui terminal/Git Bash:

Bash
mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS perpustakaan;"
mysql -u root -p perpustakaan < rest-api-perpustakaan/database/schema.sql
(Tekan Enter jika database MySQL tidak menggunakan password).

2. Menjalankan Backend (REST API)
   Buka terminal, masuk ke direktori rest-api-perpustakaan:

Bash
cd rest-api-perpustakaan
Pastikan file .env sudah sesuai dengan pengaturan database local Anda:

Ini, TOML
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=perpustakaan
DB_USERNAME=root
DB_PASSWORD=
Install autoload dependency via Composer (jika belum):

Bash
composer install
Jalankan server lokal PHP di port 8000:

Bash
php -S localhost:8000 -t public
Backend REST API aktif di http://localhost:8000

3. Menjalankan Frontend
   Buka terminal baru (biarkan server backend tetap berjalan di port 8000).

Masuk ke direktori frontend-perpustakaan:

Bash
cd frontend-perpustakaan
Jalankan server lokal PHP di port 3000:

Bash
php -S localhost:3000
Buka browser dan akses aplikasi di:

Plaintext
http://localhost:3000


4. Menjalankan Skrip Pengujian Otomatis API
Untuk menguji seluruh endpoint REST API secara otomatis:

Buka terminal baru dan masuk ke folder rest-api-perpustakaan.

Pastikan server backend di port 8000 sedang berjalan, lalu jalankan:

Bash
./tests/api_test.sh


# Link Screenshot Setiap Pertemuan

Pertemuan 1:

[https://github.com/NovaAmelia-H1101251002/pbo-lks-H1101251002-](https://github.com/NovaAmelia-H1101251002/pbo-lks-H1101251002-NOVAAMELIA/tree/main/pertemuan-01)[NOVAAMELIA/tree/main/pertemuan-01](https://github.com/NovaAmelia-H1101251002/pbo-lks-H1101251002-NOVAAMELIA/tree/main/pertemuan-01)

Pertemuan 2:

[https://github.com/NovaAmelia-H1101251002/pbo-lks-H1101251002-NOVAAMELIA/tree/main/pertemuan-02](https://github.com/NovaAmelia-H1101251002/pbo-lks-H1101251002-NOVAAMELIA/tree/main/pertemuan-02)

Pertemuan 3:

[github.com/NovaAmelia-H1101251002/pbo-lks-H1101251002-NOVAAMELIA/tree/main/pertemuan-03](https://github.com/NovaAmelia-H1101251002/pbo-lks-H1101251002-NOVAAMELIA/tree/main/pertemuan-03)

Pertemuan 4:

[github.com/NovaAmelia-H1101251002/pbo-lks-H1101251002-NOVAAMELIA/tree/main/pertemuan-04](https://github.com/NovaAmelia-H1101251002/pbo-lks-H1101251002-NOVAAMELIA/tree/main/pertemuan-04)

Pertemuan 5:

[github.com/NovaAmelia-H1101251002/pbo-lks-H1101251002-NOVAAMELIA/tree/main/pertemuan-05](https://github.com/NovaAmelia-H1101251002/pbo-lks-H1101251002-NOVAAMELIA/tree/main/pertemuan-05)

Pertemuan 6:

[github.com/NovaAmelia-H1101251002/pbo-lks-H1101251002-NOVAAMELIA/tree/main/pertemuan-06](https://github.com/NovaAmelia-H1101251002/pbo-lks-H1101251002-NOVAAMELIA/tree/main/pertemuan-06)

Pertemuan 7:

[github.com/NovaAmelia-H1101251002/pbo-lks-H1101251002-NOVAAMELIA/tree/main/pertemuan-07](https://github.com/NovaAmelia-H1101251002/pbo-lks-H1101251002-NOVAAMELIA/tree/main/pertemuan-07)
