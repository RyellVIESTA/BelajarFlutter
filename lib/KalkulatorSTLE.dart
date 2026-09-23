import 'package:aplication_project/controller/Kalkulator_controller.dart';
import 'package:get/get.dart';
import 'package:aplication_project/Coponents/my_button.dart';
import 'package:flutter/material.dart';
import 'package:aplication_project/Coponents/my_textField.dart';
import 'package:aplication_project/Coponents/my_text.dart';

class Kalkulatorstle extends StatelessWidget {
  Kalkulatorstle({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60),

              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 25,
                ),
                child: MyTextfield(
                  type: TextInputType.number,
                  hint: 'Masukkan Angka 1',
                  txtController: txtAngka1,
                  radius: 10,
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 25,
                ),
                child: MyTextfield(
                  type: TextInputType.number,
                  hint: 'Masukkan Angka 2',
                  txtController: txtAngka2,
                  radius: 10,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: MyButton(
                      onPressed: () {
                        controller.tambah(
                          double.parse(txtAngka1.text),
                          double.parse(txtAngka2.text),
                        );
                      },
                      text: '+',
                      color: const Color.fromARGB(255, 255, 255, 255),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1877F2),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: MyButton(
                      onPressed: () {
                        controller.kurang(
                          double.parse(txtAngka1.text),
                          double.parse(txtAngka2.text),
                        );
                      },
                      text: '-',
                      color: const Color.fromARGB(255, 255, 255, 255),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1877F2),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: MyButton(
                      onPressed: () {
                        controller.kali(
                          double.parse(txtAngka1.text),
                          double.parse(txtAngka2.text),
                        );
                      },
                      text: 'X',
                      color: const Color.fromARGB(255, 255, 255, 255),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1877F2),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: MyButton(
                      onPressed: () {
                        controller.bagi(
                          double.parse(txtAngka1.text),
                          double.parse(txtAngka2.text),
                        );
                      },
                      text: '/',
                      color: const Color.fromARGB(255, 255, 255, 255),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1877F2),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Obx(
                () => Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: MyText(
                    text: 'Hasil: ${controller.hasilHitung.toString()}',
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 24,
                  ),
                ),
              ),
              MyButton(
                onPressed: () {
                  txtAngka1.clear();
                  txtAngka2.clear();
                  controller.hasilHitung.value = 0.0;
                },
                text: 'Reset',
                color: const Color.fromARGB(255, 255, 255, 255),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1877F2),
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 100,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
