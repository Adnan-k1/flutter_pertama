import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'football_controller.dart';


class FootballEditController extends GetxController {
  final FootballController footballController = Get.find();

  late int index;
  var player = Rxn<Players>();

  final imageController = TextEditingController();
  final nameController = TextEditingController();
  final positionController = TextEditingController();
  final numberController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    index = Get.arguments ?? 0;
    player.value = footballController.players[index];

    if (player.value != null) {
      imageController.text = player.value!.profileImage;
      nameController.text = player.value!.name;
      positionController.text = player.value!.position;
      numberController.text = player.value!.number.toString();
    }
  }

  void saveEdit() {
    final updatedPlayer = Players(
      profileImage: imageController.text,
      name: nameController.text,
      position: positionController.text,
      number: int.tryParse(numberController.text) ?? 0,
    );

    footballController.editPlayer(index, updatedPlayer);
  }
}
