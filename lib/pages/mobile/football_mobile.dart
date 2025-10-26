import 'package:flutter/material.dart';
import 'package:flutter_pertama/controller/football_controller.dart';
import 'package:get/get.dart';

// Widget ini menampilkan daftar pemain menggunakan ListTile, dioptimalkan untuk layar sempit (ponsel).
class FootballMobile extends StatelessWidget {
  // Asumsi: footballController sudah terdaftar
  final FootballController footballController = Get.find<FootballController>();
  final Function(int index) onEdit;

  FootballMobile({super.key, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemCount: footballController.players.length, 
        itemBuilder: (context, index) {
          final player = footballController.players[index];
          
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(player.profileImage),
            ),
            title: Text(player.name),
            subtitle: Text("${player.position} • #${player.number}"),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () => onEdit(index), // Gunakan callback dari parent
            ),
          );
        },
      ),
    );
  }
}
