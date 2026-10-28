import 'package:aplication_project/controller/list_product_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../routes.dart';

class ListProductPage extends StatelessWidget {
  ListProductPage({super.key, this.produk});
  final controller = Get.put(listProductController());
  final produk;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Products"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => RefreshIndicator(
            triggerMode: RefreshIndicatorTriggerMode.anywhere,
            edgeOffset: 0,
            backgroundColor: Colors.white,
            color: Colors.blue,
            displacement: 30,
            onRefresh: () async {
              await Future.delayed(Duration(seconds: 1));
            },

            child: ListView.builder(
              itemCount: controller.listProduct.length,
              itemBuilder: (context, index) {
                final produk = controller.listProduct[index];
                return Dismissible(
                  key: ValueKey(produk.namaProduk),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(Icons.delete, color: Colors.white),
                  ),
                  onDismissed: (direction) {
                    controller.listProduct.remove(produk);
                    Get.snackbar(
                      "Deleted",
                      "${produk.namaProduk} has been deleted.",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  },

                  child: InkWell(
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

                    onLongPress: () async {
                      final pilihan = await showMenu<String>(
                        context: context,
                        position: const RelativeRect.fromLTRB(100, 100, 0, 0),
                        items: const [
                          PopupMenuItem(
                            value: 'detail',
                            child: Text('Detail Produk'),
                          ),
                          PopupMenuItem(
                            value: 'hapus',
                            child: Text('Hapus Produk'),
                          ),
                        ],
                      );

                      if (pilihan == 'detail') {
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
                      } else if (pilihan == 'hapus') {
                        controller.listProduct.remove(produk);

                        Get.snackbar(
                          'Deleted',
                          '${produk.namaProduk} has been deleted.',
                          snackPosition: SnackPosition.BOTTOM,
                        );
                      }
                    },
                    child: ListTile(
                      title: Text(produk.namaProduk),
                      subtitle: Text(produk.hargaProduk),
                      trailing: const Icon(Icons.arrow_forward),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
