import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasilHitung = 0.0.obs;

  void tambah(double angka1, double angka2){
    double hasilJumlah = angka1 + angka2;
    hasilHitung.value = hasilJumlah;
  }

  void kurang(double angka1, double angka2){
    double hasilJumlah = angka1 - angka2;
    hasilHitung.value = hasilJumlah;
  }

  void kali(double angka1, double angka2){
    double hasilJumlah = angka1 * angka2;
    hasilHitung.value = hasilJumlah;
  }

  void bagi(double angka1, double angka2){
    if(angka2 != 0){
      double hasilJumlah = angka1 / angka2;
      hasilHitung.value = hasilJumlah;
    } else {
      Get.snackbar('Error', 'Tidak bisa membagi dengan nol');
    }
  }
}