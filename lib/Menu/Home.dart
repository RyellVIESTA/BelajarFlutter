
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/list_product_controller.dart';
import '../routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(listProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => Container(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
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
                  child: Container(
                    width: 160,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          produk.gambar,
                          height: 100,
                          width: 140,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(height: 5),
                        Text(
                          produk.namaProduk,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(produk.hargaProduk),
                        Text("Rating: ${produk.rating}"),
                      ],
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
