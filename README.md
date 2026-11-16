# myportofolio_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Tugas 7
1. 

Widget Tree: Struktur hierarki berbentuk pohon yang menyusun antarmuka aplikasi, di mana setiap elemen UI direpresentasikan sebagai sebuah node (simpul) widget.

Hubungan Induk-Anak (Parent-Child): Widget induk (parent) menampung satu widget anak via parameter child (misal: Container, Padding) atau banyak anak via children (misal: Column, Row, GridView). Induk mengatur tata letak, posisi, dan batasan ukuran (constraints), sementara widget anak mengalirkan ukuran intrinsik yang diinginkan kembali ke induknya.

2. - Scaffold: menyediakan struktur visual dasar halaman (AppBar, Body, SnackBar).
 - AppBar: AppBar menampilkan bar bagian atas halaman aplikasi.
 - Padding: Body halaman utama dengan padding di sekelilingnya.
 - Row: Baris horizontal untuk menampilkan 3 InfoCard secara sejajar.
 - Column: Menyusun teks title dan content secara vertikal.
 - GridView.count: GridView menampilkan kartu tombol dalam tata letak kisi 3 kolom.
 - Card: Memberikan efek bayangan kartu elevasi 2 unit.
 - Container: Menyesuaikan lebar kartu dengan proporsi layar (dibagi 3.5).
 - InkWell: Sekarang buatlah widget ItemCard untuk menampilkan setiap item dalam bentuk kartu Material dengan efek sentuh (ripple effect via InkWell).
 - Material: Menggunakan warna sekunder dari skema tema aplikasi.
 - SnackBar: Menampilkan SnackBar dengan pesan interaktif.
 - Bagian tengah: pesan sambutan dan kisi tombol menu portofolio.

3. 
Fungsi MaterialApp: Widget pembungkus tingkat atas yang menginisialisasi sistem navigasi (Navigator), konfigurasi tema global (ThemeData), lokalisasi, serta aturan desain visual Material Design pada seluruh aplikasi.

Mengapa Menjadi Root Widget: Karena sebagian besar widget antarmuka Material (seperti Scaffold, AppBar, Theme.of(context), dan SnackBar) membutuhkan service dan konteks terpusat yang hanya disediakan langsung oleh MaterialApp.

4. Pada aplikasi bawaan Flutter, MyHomePage dibuat sebagai StatefulWidget karena bertugas mengelola variabel penghitung angka (_counter) yang berubah-ubah saat tombol ditekan. Namun, pada halaman menu utama portofolio kita, seluruh elemen antarmuka yang akan kita tampilkan bersifat tetap (nama, identitas pemilik, kartu menu, dan tombol). Halaman ini tidak perlu menyimpan atau memutasi state lokal secara dinamis. Untuk tampilan statis seperti ini, StatelessWidget adalah pilihan yang tepat karena lebih sederhana: tidak ada objek State yang perlu dibuat dan dikelola.

5. 
Apa itu BuildContext: Objek penanda lokasi spesifik sebuah widget di dalam struktur pohon (widget tree).

Mengapa Penting: Sebagai perantara agar suatu widget dapat berinteraksi ke atas (ancestor) untuk membaca data tema, ukuran layar, maupun pengelola notifikasi dari widget induknya.

Penggunaan di build: Diterima sebagai parameter build(BuildContext context) lalu diteruskan ke metode seperti:
 - MediaQuery.of(context) (membaca ukuran layar)
 - Theme.of(context) (mengambil skema warna/gaya aplikasi)
 - ScaffoldMessenger.of(context) (menampilkan SnackBar)

6. 
Hot Reload: 

Menyuntikkan kode yang telah diperbarui ke dalam Dart VM yang sedang berjalan — tanpa perlu memulai ulang aplikasi atau kehilangan status.
Mempertahankan: Layar saat ini, tumpukan navigasi (navigation stack), input formulir, posisi gulir (scroll position) — semuanya. Memperbarui: Metode *build* pada *widget*, tata letak antarmuka pengguna (UI), gaya (*styling*), serta apa pun yang ada di dalam fungsi `build()`.
Di sinilah keunggulannya. Ubah warna, *padding*, atau jenis huruf — perubahan langsung terlihat. Seketika itu juga. Status aplikasi Anda tetap utuh. Alur kerja aplikasi Anda pun tetap terjaga.

Gunakan untuk: 
→ Menyesuaikan padding, spasi, warna, atau font 
→ Memindahkan atau menambahkan widget 
→ Memperbaiki kesalahan ketik (typo) pada teks yang ditampilkan 
→ Perubahan apa pun yang hanya menyangkut antarmuka pengguna (UI)

Hot Restart: 

Melakukan restart penuh pada Dart VM dan membangun ulang aplikasi dari awal — namun tidak menginstal ulang aplikasi tersebut. Proses ini lebih lambat daripada *hot reload*, tetapi lebih cepat daripada membangun ulang aplikasi secara menyeluruh (*full rebuild*).

Mereset: Semua status (*state*), tumpukan navigasi (*navigation stack*), dan variabel — semuanya dimulai kembali dari awal. Memperbarui: Mencakup semua yang dilakukan *hot reload* — ditambah logika inisialisasi, konstruktor, dan variabel statis.

Gunakan untuk: 
→ Perubahan di dalam `initState()` atau `didChangeDependencies()` 
→ Modifikasi pada *provider*, layanan (*service*), atau pengaturan dependensi 
→ Penambahan atau perubahan pada kolom konstruktor 
→ Modifikasi variabel statis atau *singleton* 
→ Perubahan pada `pubspec.yaml` atau penambahan paket baru 
→ Situasi di mana ada sesuatu yang tampak tidak beres dan Anda tidak mengetahui penyebabnya

AI Disclosure:
Menggunakan Gen AI Gemini ketika terjadi error pada saat mencoba memberikan warna pada setiap tombol yang ada, ternyata itu karena syntax error. 