import 'dart:io'; // Tambahkan ini untuk menggunakan stdin
import 'dart:math';

// import 'functionpyramid.dart';

void loop(bool Function() condition, Function body) {
  while (condition()) {
    body();
  }
}

// Fungsi untuk mencetak bentuk piramida
void cetakPiramida(List<int> arrangka, int lenarr, int pilih) {
  int index = 0, baris = 0;; // Untuk melacak posisi elemen yang dicetak dan level piramida
  
  switch(pilih) {
    case 1:
      loop(() => index < lenarr, () {
        int j = 0;
        // Looping untuk cetak spasi sesuai di setiap baris piramida
        loop(() => j < lenarr - (baris + 1), () {
          stdout.write("  ");
          j++;
        });

        
        int k = 0;
        loop(() => k <= baris && index < lenarr, () {
          stdout.write(arrangka[index].toString() + " ");
          index++;
          k++;
        });
        print("");
        baris++;
      }); break;
    case 2:
      loop(() => index < lenarr, () {
        int k = 0;
        loop(() => k <= baris && index < lenarr, () {
          stdout.write(arrangka[index].toString() + " ");
          index++;
          k++;
        });
        print("");
        baris++;
      }); break;
    default: print("Pilihan tidak valid");
  }
}

void bubbleSort(List<int> arr, int lenarr) {
  bool swapped = true;

  loop(() => swapped, () {
    swapped = false;
    int i = 0;

    // Loop untuk membandingkan dan menukar elemen
    loop(() => i < lenarr - 1, () {
      if(arr[i] > arr[i + 1]) {
        int temp = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = temp;
        swapped = true;
      }
      i++;
    });

    lenarr--; // Kurangi batas elemen yang perlu dicek
  });
}

void inverse(List<int> arr, int lenarr){
  double jumbagi = lenarr / 2;
  int awal = 0;
  int akhir = lenarr - 1;

  loop (() => (awal < jumbagi), () {
    int temp = arr[awal];
    arr[awal] = arr[akhir];
    arr[akhir] = temp;
    awal++;
    akhir--;
  });
}

void shuffle(List<int> arr, int lenarr){
  int i = lenarr - 1;

  loop (() => (i > 0), () {
    int j = Random().nextInt(lenarr);
    
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
    
    i--;
  });
}

// Fungsi untuk mengelola input dari user dengan konversi dan validasi
bool inputYN(String teks) {
  print(teks);
  String? input = stdin.readLineSync()?.toUpperCase();
  return input == 'Y';
}

void main() {
  bool ulang = true;
  
  loop(() => ulang, () {
    print("Masukkan angka: ");
    // Reading name of the Geek
    int? angka = int.parse(stdin.readLineSync()!); // null safety in name string

    List<int> arrangka = [];
    print("$angka angka random:");
    arrangka = List.generate(angka, (_) {
      var random = Random().nextInt(100);
      print(random);
      return random;
    });

    print("Pilihan \n1. Bubble Sort\n2. Inversi\n3. Shuffle\nMasukkan pilihan anda:");
    int? pilihan = int.parse(stdin.readLineSync()!);
    DateTime startTime = DateTime.now();
    switch(pilihan){
      case 1:
        bubbleSort(arrangka, arrangka.length);
        break;
      case 2:
        inverse(arrangka, arrangka.length);
        break;
      case 3:
        shuffle(arrangka, arrangka.length);
        break;
      default:
        print("Pilihan tidak valid!");
    }

    // Mencatat waktu setelah eksekusi selesai
    DateTime endTime = DateTime.now();

    // Menghitung selisih waktu eksekusi
    Duration executionTime = endTime.difference(startTime);

    print("Hasil Modifikasi Array: ${arrangka} \nWaktu Eksekusi: ${executionTime.inMilliseconds.toDouble().toStringAsPrecision(4)} ms");

    // Menggunakan satu kali "if" untuk cetak piramida dan ulang
    bool jwb = inputYN("Apakah anda ingin cetak bentuk piramida? (Y/N)");
    switch(jwb) {
      case(true):
        print("Pilihan \n1. Siku-siku\n2. Sama Kaki\nMasukkan pilihan anda:");
        int? pilihan = int.parse(stdin.readLineSync()!);
        switch(pilihan){
          case 1:
            cetakPiramida(arrangka, arrangka.length, 2);
            break;
          case 2:
            cetakPiramida(arrangka, arrangka.length, 1);
            break;
          default:
            print("Pilihan tidak valid!");
        }
        break;
      default:
        break;
    }

    ulang = inputYN("Apakah anda ingin mengulang? (Y/N)");
  });
}