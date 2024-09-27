# Program Bubble Sort, Inversi, dan Shuffle (Dart Language)

## Deskripsi Singkat
Program ini merupakan program terminal sederhana yang dibuat dengan menggunakan bahasa Dart. Tujuan dari program ini adalah untuk menjalankan beberapa operasi sederhana terhadap suatu array angka. Beberapa operasi yang dapat dilakukan oleh program ini adalah Sorting (pengurutan angka dari yang terkecil hingga yang terbesar) dengan metode Bubble Sort. Selain itu, program ini juga dapat membalik (inversi) dan mengacak (shuffle) urutan elemen-elemen angka dalam array. Terakhir, program ini juga dapat mencetak elemen-elemen array dalam bentuk Piramida dan segitiga siku-siku.

## Cara menjalankan program
1. Pastikan Dart SDK sudah terinstall. Jika belum, unduh dari https://dart.dev/get-dart.
2. Pastikan Dart sudah ditambahkan ke PATH sistem agar bisa dijalankan dari terminal atau command prompt.
3. Buka terminal atau command prompt.
4. Arahkan ke folder tempat file Dart disimpan.
5. Jalankan program dengan perintah berikut: "dart run main.dart"

## Cara menggunakan program
1. Masukkan 1 angka random (n). Lalu, program akan mengeluarkan n angka random dalam range 1-100.
2. Program akan memberikan 3 pilihan (Bubble Sort (1), Inversi (2), dan Shuffle (3)). Masukkan pilihan anda sesuai angkanya. Mis: Jika anda ingin menginversi urutan-urutan angka tersebut, maka masukkan angka 2.
3. Program akan menjalankan fungsi inversi terhadap array angka random tersebut dan mengeluarkan output array hasil modifikasinya serta durasi waktu eksekusi.
4. Program akan memberikan pilihan apakah Anda ingin mencetak array angka tersebut dalam bentuk segitiga.
5. Jika ya, maka masukkan "Y", dan program akan memberikan pilihan apakah ingin mencetak dalam bentuk piramida berurut atau piramida biasa. Masukkan pilihan segitiga yang ingin dicetak dan program akan mencetak sesuai pilihan anda.
6. Terakhir, program akan menanyakan apakah anda ingin mengulang proses program dari awal. Program akan berhenti jika anda memasukkan "N" dan sebaliknya.

## Penjelasan fungsi
1. loop(bool Function() condition, Function body)
Fungsi ini merupakan function untuk looping (menggantikan while) yang akan menjalankan _body_ selama kondisi _condition_ bernilai true.
2. cetakPiramida(List<int> arrangka, int lenarr, int pilih)
Fungsi ini digunakan utnuk mencetak angka dalam bentuk piramida.
3. bubbleSort(List<int> arr, int lenarr)
Fungsi ini untuk mengurutkan angka dari yang terkecil ke terbesar dengan metode Bubble Sort. Cara kerja metode ini adalah dengan membandingkan elemen angka di sebelah kiri dengan elemen angka di sebelah kanannya. Jika elemen angka di kiri bernilai lebih besar dibanding elemen angka di kanan, maka elemen angka di kiri akan bertukar posisi dengan elemen angka di kanan.
4. inverse(List<int> arr, int lenarr)
Fungsi ini untuk membalik urutan elemen-elemen angka dalam array.
5. shuffle(List<int> arr, int lenarr)
Fungsi ini untuk mengacak urutan elemen-elemen angka dalam array.
6. inputYN(String teks)
Fungsi ini untuk mengelola input Y/N (Ya / Tidak) dari user. Fungsi akan mengembalikan nilai true jika inputan user bernilai "Y". Sebaliknya, fungsi akan nilai false jika inputan user bernilai "N". 
