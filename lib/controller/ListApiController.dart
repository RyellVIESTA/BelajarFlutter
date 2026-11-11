
import 'package:aplication_project/Models/dataModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ListApiController extends GetxController {
  var isLoading = false.obs;
  var dataModel = <ListApiModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    getListApi();
  }

  void getListApi() async {
    try {
      isLoading.value = true;

      final url = Uri.parse(
        "https://jsonplaceholder.typicode.com/users",
      );

      final response = await http.get(url);

      isLoading.value = false;

      if (response.statusCode == 200) {
        dataModel.value = listApiModelFromJson(response.body);
      } else {
        Get.snackbar("Gagal", "Cek koneksi internet");
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("Gagal", e.toString());
      print("Error nya $e");
    }
  }
}
