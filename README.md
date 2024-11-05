# COVELA - MOBILE ⭐

## 🔵 README : TUGAS 7

## 1) Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

StatelessWidget adalah widget yang tidak memiliki data atau status yang dapat berubah saat aplikasi berjalan. Karena tidak memiliki status yang dinamis, tampilannya tidak berubah kecuali seluruh widget dibuat ulang. Sementara itu, StatefulWidget adalah widget yang memiliki status yang dapat berubah-ubah atau dinamis. Setiap kali status ini berubah, Flutter akan me-refresh tampilan untuk mencerminkan perubahan tersebut.
Perbedaan utama keduanya terletak pada apakah widget tersebut memiliki status internal yang dapat berubah atau tidak.

## 2) Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
- MaterialApp: Membuat aplikasi berbasis Material Design dan menentukan tema serta halaman utama aplikasi.
- Scaffold: Menyediakan struktur dasar halaman seperti AppBar dan body.
- AppBar: Bagian atas halaman yang menampilkan judul aplikasi.
- Padding: Menambahkan ruang di sekitar widget sesuai dengan nilai padding yang diberikan.
- Column: Menyusun widget secara vertikal.
- Row: Menyusun widget secara horizontal.
- Text: Menampilkan teks statis.
- SizedBox: Menambahkan ruang kosong secara vertikal atau horizontal.
- GridView.count: Menyusun item dalam bentuk grid dengan jumlah kolom tertentu (3 kolom pada proyek ini).
- Card: Menyediakan tampilan kartu dengan bayangan dan elevasi.
- Container: Menyusun dan menambahkan properti tambahan pada widget lain, seperti padding dan lebar.
- MediaQuery: Mendapatkan ukuran layar agar widget menyesuaikan ukuran perangkat.
- Material: Memberikan efek material pada widget, seperti warna latar belakang dan bentuk melengkung.
- InkWell: Menambahkan efek klik pada widget dengan animasi ripple.
- SnackBar: Menampilkan pesan sementara di bagian bawah layar saat item ditekan.
- Icon: Menampilkan ikon untuk memberikan representasi visual.

## 3)Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi setState() adalah untuk memperbarui state dari suatu StatefulWidget. Saat setState() dipanggil, Flutter akan memicu rebuild dari widget tersebut dan anak-anaknya, sehingga perubahan yang terjadi pada variabel-variabel state akan langsung tercermin di tampilan aplikasi. 
Variabel-variabel yang dapat terdampak oleh setState() adalah variabel yang disimpan di dalam objek state dari StatefulWidget, yaitu variabel yang nilainya dapat berubah dan memengaruhi tampilan aplikasi.
Contohnya : 
- Variabel counter: Contohnya seperti dalam aplikasi penghitung, variabel yang menyimpan nilai hitungan dapat diperbarui dengan setState() setiap kali pengguna menekan tombol untuk menghitung.
- Variabel teks: Jika teks dalam widget perlu berubah berdasarkan interaksi pengguna, seperti teks input atau pesan.
- Variabel boolean: Variabel yang mengontrol kondisi logika tertentu, seperti isLoading, isVisible, atau isSelected.
- List dan Map: Jika widget menampilkan daftar item atau objek, setState() digunakan untuk memperbarui tampilan saat ada penambahan, penghapusan, atau perubahan item dalam koleksi tersebut.

## 4) Jelaskan perbedaan antara const dengan final.

final digunakan untuk variabel yang nilainya akan ditetapkan hanya satu kali dan tidak bisa diubah setelah itu, tetapi nilainya bisa ditentukan saat runtime. Sedangkan, const digunakan untuk variabel yang nilainya konstan dan sudah harus diketahui saat kompilasi. 

## 5) STEP BY STEP 🪜

- Membuat proyek flutter baru dengan nama “covela” dengan perintah “flutter create covela”
- Membuat file baru bernama “menu.dart” didalam direktori lib dan menambahkan kode “import 'package:flutter/material.dart';” pada baris pertama
- Memindahkan kelas MyHomePage dan _MyHomePageState dari file main.dart ke menu.dart dan menambahkan “import 'package:covela/menu.dart';” di baris awal pada main.dart agar file main.dart mengenali class MyHomePage yang di menu.dart
- Menyesuaikan warna tema aplikasi pada file main.dart

- Mengubah sifat widget halaman dari stateful menjadi stateless pada menu.dart dengan:
>Menghapus semua isi dari class MyHomePage ... seperti const MyHomePage({super.key, required this.title});, variabel final String title;, komentar-komentar pada berkas, dan State<MyHomePage> createState() => _MyHomePageState();
>Mengubah ... extends StatefulWidget menjadi ... extends StatelessWidget pada class MyHomePage.
>Menambahkan MyHomePage({super.key}); sebagai constructor class MyHomePage.
>Menghapus seluruh class class _MyHomePageState extends State<MyHomePage>
>Menambahkan Widget build sehingga kode terlihat seperti di bawah.

- Membuat tiga variabel bertipe string yang berisi NPM, nama, dan kelas pada class MyHomePage di menu.dart dan membuat class baru bernama InfoCard pada berkas menu.dart untuk membuat card sederhana yang akan menampilkan informasi NPM, nama, dan kelas 

- Membuat class baru bernama ItemHomepage yang berisi atribut-atribut dari card pada menu.dart
- Membuat list of ItemHomepage yang berisi tombol-tombol yang ingin ditambahkan pada class MyHomePage. Tombol yang ditambahkan adalah tombol “Lihat Daftar Produk, tombol “Tambah Produk” dan tombol “Logout”
- Membuat class ItemCard untuk menampilkan tombol-tombol
- Mengubah bagian Widget build() pada class MyHomePage agar dapat mengintegrasikan dan menampilkan seluruh card yang ada di HomePage
- git add,commit dan push!




