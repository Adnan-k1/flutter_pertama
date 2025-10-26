import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_pertama/controller/football_controller.dart';
import 'package:flutter_pertama/routers/routers.dart';
// Asumsi path import ini benar
import 'package:flutter_pertama/pages/mobile/football_mobile.dart'; 
import 'package:flutter_pertama/pages/widescreen/footbal_widescreen.dart'; 

class FootballPage extends StatelessWidget {
  // Panggil dan temukan FootballController
  final footballController = Get.find<FootballController>();

  FootballPage({super.key});

  // Metode untuk menangani navigasi ke halaman edit
  void _navigateToEdit(int index) {
    Get.toNamed(
      Approters.footballedit,
      arguments: index,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Football")),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // PENTING: Panggil metode di controller untuk update state layout
          // Ini menentukan apakah lebar layar kurang dari 600px.
          footballController.updateLayout(constraints);

          // Gunakan Obx untuk mendengarkan perubahan state isMobile dari controller
          // dan memilih tampilan yang sesuai.
          return Obx(
            () {
              // Tampilkan pesan jika daftar pemain kosong.
              if (footballController.players.isEmpty) {
                return const Center(child: Text("No players added yet."));
              }
              
              // Pilih widget berdasarkan state isMobile dari controller
              return footballController.isMobile.value
                  ? FootballMobile(onEdit: _navigateToEdit)
                  : FootballWidescreen(onEdit: _navigateToEdit);
            },
          );
        },
      ),
    );
  }
}
