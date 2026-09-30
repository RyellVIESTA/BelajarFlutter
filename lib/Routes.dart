import 'package:aplication_project/Pages/confirm_registration_page.dart';
import 'package:aplication_project/Pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  // list halaman yang ada di app
  static const String Registration = '/registration';
  static const String ConfirmRegistration = '/confirm-registration';

  static final pages = [
    GetPage(name: Registration, page: ()=> RegistrationPage()),
    GetPage(name: ConfirmRegistration, page: () => ConfirmRegistrationPage())

  ];
}
