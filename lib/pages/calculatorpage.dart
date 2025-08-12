import 'package:flutter/material.dart';
import 'package:flutter_pertama/componets/input_field.dart';
import 'package:flutter_pertama/componets/widget_button.dart';
import 'package:flutter_pertama/controller/kalkulatorcontroller.dart';
import 'package:flutter_pertama/routers/routers.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorController kalkulatorController = Get.put(
    CalculatorController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator Sederhana")),
      body: SingleChildScrollView( 
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InputField(
              controller: kalkulatorController.txtangka1,
              label: "Angka 1",
              hintText: "Masukkan angka pertama",
            ),
            SizedBox(height: 10),

            InputField(
              controller: kalkulatorController.txtangka2,
              label: "Angka 2",
              hintText: "Masukkan angka kedua",
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CoustumButton(
                  text: "+",
                  onPressed: () {
                    kalkulatorController.tambah();
                  },
                ),
                CoustumButton(
                  text: "-",
                  onPressed: () {
                    kalkulatorController.kurang();
                  },
                ),
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CoustumButton(
                  text: "*",
                  onPressed: () {
                    kalkulatorController.kali();
                  },
                ),
                CoustumButton(
                  text: "/",
                  onPressed: () {
                    kalkulatorController.bagi();
                  },
                ),
              ],
            ),
            SizedBox(height: 20),

            Center(
              child: Obx(() {
                return Text(
                  'Hasil: ${kalkulatorController.hasil.value}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                );
              }),
            ),

            SizedBox(height: 20),
            CoustumButton(
              text: "move to footballplayer",
              onPressed: () {
                Get.toNamed(Approters.footballplayer);
              },
            ),
          ],
        ),
      ),
    );
  }
}
