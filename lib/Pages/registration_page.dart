import 'package:aplication_project/Coponents/my_button.dart';
import 'package:aplication_project/Coponents/my_textField.dart';
import 'package:aplication_project/Routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtJenisKelamin = TextEditingController();
    TextEditingController txtWA = TextEditingController();
    TextEditingController txtEmail = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("registration")),
      body: Column(
        children: [
          const SizedBox(height: 20),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: MyTextfield(
              hint: 'Nama',
              txtController: txtNama,
              radius: 20,
            ),
          ),

          const SizedBox(height: 20),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: MyTextfield(
              hint: 'Alamat',
              txtController: txtAlamat,
              radius: 20,
            ),
          ),

          const SizedBox(height: 20),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: MyTextfield(
              hint: 'Jenis Kelamin',
              txtController: txtJenisKelamin,
              radius: 20,
            ),
          ),

          const SizedBox(height: 20),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: MyTextfield(
              type: TextInputType.number,
              hint: 'No WA',
              txtController: txtWA,
              radius: 20,
            ),
          ),

          const SizedBox(height: 20),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: MyTextfield(
              hint: 'Email',
              txtController: txtEmail,
              radius: 20,
            ),
          ),

          const SizedBox(height: 20),

          Container(
            child: MyButton(
              onPressed: () {
                Get.toNamed(
                  Routes.ConfirmRegistration,
                  arguments: {
                    'nama': txtNama.text.toString(),
                    'alamat': txtAlamat.text.toString(),
                    'jenis_kelamin': txtJenisKelamin.text.toString(),
                    'nomor_wa': txtWA.text.toString(),
                    'email': txtEmail.text.toString(),
                  },
                );
              },
              text: "Send",
              color: Color.fromRGBO(0, 0, 0, 1),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 195, 255),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
