import 'package:aplication_project/controller/list_product_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../routes.dart';

class ListProductPage extends StatelessWidget {
  ListProductPage({super.key});
  final controller = Get.put(listProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Products"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listProduct.length,
          itemBuilder: (context, index) {
            final produk = controller.listProduct[index];
            return InkWell(
              onTap: () {
                Get.toNamed(
                  Routes.detailProduct,
                  arguments: {
                    'namaProduk': produk.namaProduk.toString(),
                    'harga': produk.hargaProduk.toString(),
                    'deskripsi': produk.deskripsi.toString(),
                    'image': produk.gambar.toString(),
                    'reviews': produk.review.toString(),
                    'rating': produk.rating.toString(),
                    'namaToko': produk.namaToko.toString(),
                  },
                );
              },
              child: ListTile(
                title: Text(produk.namaProduk),
                subtitle: Text(produk.hargaProduk),
                trailing: Icon(Icons.arrow_forward),
              ),
            );
          },
        ),
      ),
    );
  }
}
