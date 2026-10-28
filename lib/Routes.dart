import 'package:aplication_project/Pages/Detail_Product_Page.dart';
import 'package:aplication_project/Pages/confirm_registration_page.dart';
import 'package:aplication_project/Pages/registration_page.dart';
import 'package:aplication_project/Pages/list_product_page.dart';
import 'package:aplication_project/Pages/main_menu_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String Registration = '/registration';
  static const String ConfirmRegistration = '/confirm-registration';
  static const String ListProduct = '/list-product';
  static const String detailProduct = '/detail-product';
  static const String MainMenu = '/mainmenupage';

  static final pages = [
    GetPage(name: Registration, page: () => RegistrationPage()),
    GetPage(name: ConfirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: ListProduct, page: () => ListProductPage()),
    GetPage(name: MainMenu, page: () => MainMenuPage()),
    GetPage(name: detailProduct, page: () => DetailProdukPage()),
  ];
}
