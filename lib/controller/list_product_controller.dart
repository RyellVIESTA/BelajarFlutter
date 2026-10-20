import 'package:get/get.dart';

import '../Models/Product_models.dart';

class listProductController extends GetxController {
  List<ProductModel> listProduct = [
    ProductModel(
      namaProduk: 'Iphone 20 PROMAX',
      hargaProduk: '50JT',
      deskripsi: 'Deskripsi Iphone 20 PROMAX',
      gambar: 'https://id-live-01.slatic.net/p/8e747961f5767f4ea54b68dff7443b33.jpg',
      review: 'Review Iphone 20 PROMAX',
      rating: '4.5',
      namaToko: 'Toko Elektronik',
    ),
    ProductModel(
      namaProduk: 'Laptop ROG SCAR',
      hargaProduk: '90JT',
      deskripsi: 'Deskripsi Laptop ROG SCAR',
      gambar: 'https://dlcdnwebimgs.asus.com/files/media/982b43f2-03f0-4780-b552-cf2a58d515bf/v1/images/m-kv_1.webp',
      review: 'Review Laptop ROG SCAR',
      rating: '4.8',
      namaToko: 'Toko Elektronik',
    ),
    ProductModel(
      namaProduk: 'Tablet Samsung Galaxy Tab S9',
      hargaProduk: '30JT',
      deskripsi: 'Deskripsi Tablet Samsung Galaxy Tab S9',
      gambar: 'https://images.samsung.com/is/image/samsung/assets/id/galaxy-tab-s9/feature/galaxy-tab-s9-snap-bottom-mo.jpg',
      review: 'Review Tablet Samsung Galaxy Tab S9',
      rating: '4.3',
      namaToko: 'Toko Elektronik',
    ),
    ProductModel(
      namaProduk: 'Headset Razer Kraken V3 Pro',
      hargaProduk: '5JT',
      deskripsi: 'Deskripsi Headset Razer Kraken V3 Pro',
      gambar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQLIU5mWxf11SlrcDzIwvjY97dqN3I3F2kR07L4uo7D3M_uPf9Yig3PF4&s=10',
      review: 'Review Headset Razer Kraken V3 Pro',
      rating: '4.6',
      namaToko: 'Toko Elektronik',
    ),
    ProductModel(
      namaProduk: 'Smartwatch Apple Watch Series 9',
      hargaProduk: '10JT',
      deskripsi: 'Deskripsi Smartwatch Apple Watch Series 9',
      gambar: 'https://cdsassets.apple.com/live/7WUAS350/images/tech-specs/apple-watch-series-9.png',
      review: 'Review Smartwatch Apple Watch Series 9',
      rating: '4.7',
      namaToko: 'Toko Elektronik',
    ),
  ];
}
