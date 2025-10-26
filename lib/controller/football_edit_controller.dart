// football_edit_controller.dart
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pertama/controller/football_controller.dart';

class FootballEditController extends GetxController {
  late int playerIndex;

  
  var player = Rx<Players?>(null);

  
  final imageController = TextEditingController();
  final nameController = TextEditingController();
  final positionController = TextEditingController();
  final numberController = TextEditingController();

  
  final FootballController footballController = Get.find<FootballController>();

  @override
  void onInit() {
    super.onInit();
   
    playerIndex = Get.arguments as int; 
    
    
    player.value = footballController.players[playerIndex];

    
    imageController.text = player.value!.profileImage;
    nameController.text = player.value!.name;
    positionController.text = player.value!.position;
    numberController.text = player.value!.number.toString();
  }

  void saveEdit() {
    if (player.value != null) {
      final updatedPlayer = Players(
        profileImage: imageController.text,
        name: nameController.text,
        position: positionController.text,
        number: int.tryParse(numberController.text) ?? 0,
      );
      // Gunakan indeks untuk memperbarui pemain yang benar
      footballController.editPlayer(playerIndex, updatedPlayer);
    }
  }

  @override
  void onClose() {
    imageController.dispose();
    nameController.dispose();
    positionController.dispose();
    numberController.dispose();
    super.onClose();
  }
}