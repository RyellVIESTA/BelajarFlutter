import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String nama;
  late String alamat;
  late String jenisKelamin;
  late String nomorWA;
  late String email;

  @override
  void onInit() {
    super.onInit();

    final arguments = Get.arguments;

    nama = arguments['nama'];
    alamat = arguments['alamat'];
    jenisKelamin = arguments['jenis_kelamin'];
    nomorWA = arguments['nomor_wa'];
    email = arguments['email'];
  }
}