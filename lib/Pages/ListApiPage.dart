
import 'package:aplication_project/controller/ListApiController.dart';
import 'package:aplication_project/Routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListApiPage extends StatelessWidget {
  ListApiPage({super.key});

  final controller = Get.put(ListApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Users"),
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
              controller.getListApi();
            },
            child: ListView.builder(
              itemCount: controller.dataModel.length,
              itemBuilder: (context, index) {
                final user = controller.dataModel[index];

                return Dismissible(
                  key: ValueKey(user.id),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  onDismissed: (direction) {
                    controller.dataModel.remove(user);

                    Get.snackbar(
                      "Deleted",
                      "${user.name} has been deleted.",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  },
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(
                        Routes.detailUser,
                        arguments: {
                          'name': user.name,
                          'username': user.username,
                          'email': user.email,
                          'street': user.address.street,
                          'suite': user.address.suite,
                          'city': user.address.city,
                          'zipcode': user.address.zipcode,
                          'phone': user.phone,
                          'website': user.website,
                          'company': user.company.name,
                        },
                      );
                    },
                    onLongPress: () async {
                      final pilihan = await showMenu<String>(
                        context: context,
                        position: const RelativeRect.fromLTRB(
                          100,
                          100,
                          0,
                          0,
                        ),
                        items: const [
                          PopupMenuItem(
                            value: 'detail',
                            child: Text('Detail User'),
                          ),
                          PopupMenuItem(
                            value: 'hapus',
                            child: Text('Hapus User'),
                          ),
                        ],
                      );

                      if (pilihan == 'detail') {
                        Get.toNamed(
                          Routes.detailUser,
                          arguments: {
                            'name': user.name,
                            'username': user.username,
                            'email': user.email,
                            'street': user.address.street,
                            'suite': user.address.suite,
                            'city': user.address.city,
                            'zipcode': user.address.zipcode,
                            'phone': user.phone,
                            'website': user.website,
                            'company': user.company.name,
                          },
                        );
                      } else if (pilihan == 'hapus') {
                        controller.dataModel.remove(user);

                        Get.snackbar(
                          'Deleted',
                          '${user.name} has been deleted.',
                          snackPosition: SnackPosition.BOTTOM,
                        );
                      }
                    },
                    child: ListTile(
                      title: Text(user.name),
                      subtitle: Text(user.email),
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
