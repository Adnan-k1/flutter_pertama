import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_pertama/controller/football_controller.dart';
import 'package:flutter_pertama/controller/football_edit_controller.dart';

class EditPlayerPage extends StatefulWidget {
  const EditPlayerPage({super.key});

  @override
  State<EditPlayerPage> createState() => _EditPlayerPageState();
}

class _EditPlayerPageState extends State<EditPlayerPage> {
  final FootballEditController editController =
      Get.put(FootballEditController());

  final imageController = TextEditingController();
  final nameController = TextEditingController();
  final positionController = TextEditingController();
  final numberController = TextEditingController();

  late int index;

  @override
  void initState() {
    super.initState();
    index = Get.arguments;
    editController.setIndex(index);

    final footballController = editController.footballController;
    final player = footballController.players[index];

    imageController.text = player.profileImage;
    nameController.text = player.name;
    positionController.text = player.position;
    numberController.text = player.number.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: imageController,
              decoration: const InputDecoration(labelText: "Image URL"),
            ),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: positionController,
              decoration: const InputDecoration(labelText: "Position"),
            ),
            TextField(
              controller: numberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Number"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                editController.saveEdit(
                  Players(
                    profileImage: imageController.text,
                    name: nameController.text,
                    position: positionController.text,
                    number: int.tryParse(numberController.text) ?? 0,
                  ),
                );
                Get.back();
              },
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
