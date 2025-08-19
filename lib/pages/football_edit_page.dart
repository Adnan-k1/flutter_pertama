import 'package:flutter/material.dart';
import 'package:flutter_pertama/controller/football_controller.dart';
import 'package:get/get.dart';

class EditPlayerPage extends StatelessWidget {
  EditPlayerPage({super.key});

  final FootballController footballController = Get.find();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final int index = Get.arguments as int;

    final player = footballController.players[index];
    nameController.text = player.name;
    positionController.text = player.position;
    numberController.text = player.number.toString();
    imageController.text = player.profileImage;

    return Scaffold(
      appBar: AppBar(title: Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: positionController,
              decoration: InputDecoration(labelText: "Position"),
            ),
            TextField(
              controller: numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Number"),
            ),
            TextField(
              controller: imageController,
              decoration: InputDecoration(labelText: "Profile Image URL"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                footballController.editPlayer(
                  index,
                  Players(
                    profileImage: imageController.text,
                    name: nameController.text,
                    position: positionController.text,
                    number: int.parse(numberController.text),
                  ),
                );
                Get.back();
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
