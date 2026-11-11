import 'package:get/get.dart';

class DetailUserController extends GetxController {
  late String name;
  late String username;
  late String email;
  late String street;
  late String suite;
  late String city;
  late String zipcode;
  late String phone;
  late String website;
  late String company;

  @override
  void onInit() {
    super.onInit();

    final arguments = Get.arguments;

    name = arguments['name'];
    username = arguments['username'];
    email = arguments['email'];
    street = arguments['street'];
    suite = arguments['suite'];
    city = arguments['city'];
    zipcode = arguments['zipcode'];
    phone = arguments['phone'];
    website = arguments['website'];
    company = arguments['company'];
  }
}