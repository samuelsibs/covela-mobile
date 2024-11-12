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
- Menambahkan attribute color pada kelas ItemHomePage dan memberikan warna yang berbeda pada tiap button dengan cara menambahkan color pada parameter tombolnya di list of ItemHomePage
- git add,commit dan push!


## 🔵 README : TUGAS 8

## 1) Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
const digunakan untuk membuat nilai atau objek yang tidak berubah pada saat proses compile. Dengan menggunakan const kita bisa meningkatkan efisiensi aplikasi dengan mengurangi penggunaan memori dan meningkatkan performa, karena objek yang sama tidak dibuat berulang-ulang. Kita sebaiknya menggunakan const jika widget atau nilai tetap (tidak berubah) selama aplikasi berjalan. Tidak perlu menggunakan const jika nilai atau widget tersebut dapat berubah di runtime.

## 2) Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
- Column itu untuk menyusun widget secara vertikal. Contoh: Column(children: [Text('Item 1'), Text('Item 2')]).
- Row itu untuk menyusun widget secara horizontal. Contoh: Row(children: [Icon(Icons.home), Text('Home')]).

## 3) Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Elemen input yang digunakan adalah TextFormField untuk menerima masukan teks, jumlah, deskripsi, dan kuantitas.
Elemen input lain yang tidak digunakan di tugas ini: DropdownButton, Checkbox, Slider, Switch. Elemen-elemen ini dapat digunakan jika ingin menyediakan pilihan tertentu, opsi biner, atau input numerik yang bisa diubah dengan cara geser.

## 4) Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Tema dapat diatur melalui ThemeData di dalam MaterialApp, seperti dengan colorScheme untuk menetapkan warna konsisten di seluruh aplikasi. ThemeData diterapkan dengan pengaturan primarySwatch agar warna konsisten.

## 5) Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Navigasi dikelola menggunakan Navigator.push atau Navigator.pushReplacement untuk berpindah antar halaman.
