
import 'package:aplication_project/Pages/Detail_Product_Page.dart';
import 'package:aplication_project/Pages/confirm_registration_page.dart';
import 'package:aplication_project/Pages/registration_page.dart';
import 'package:aplication_project/Pages/list_product_page.dart';
import 'package:aplication_project/Pages/main_menu_page.dart';
import 'package:aplication_project/Pages/Login_clone.dart';
import 'package:aplication_project/Pages/ListApiPage.dart';
import 'package:aplication_project/Pages/DetailUserPage.dart';

import 'package:get/get.dart';

class Routes {
  static const String Registration = '/registration';
  static const String ConfirmRegistration = '/confirm-registration';
  static const String ListProduct = '/list-product';
  static const String detailProduct = '/detail-product';
  static const String MainMenu = '/mainmenupage';
  static const String loginClone = '/login-clone';
  static const String listApi = '/list-api';
  static const String detailUser = '/detail-user';

  static final pages = [
    GetPage(name: Registration, page: () => RegistrationPage()),
    GetPage(name: ConfirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: ListProduct, page: () => ListProductPage()),
    GetPage(name: MainMenu, page: () => MainMenuPage()),
    GetPage(name: detailProduct, page: () => DetailProdukPage()),
    GetPage(name: loginClone, page: () => LoginClone()),
    GetPage(name: listApi, page: () => ListApiPage()),
    GetPage(name: detailUser, page: () => DetailUserPage()),
  ];
}
