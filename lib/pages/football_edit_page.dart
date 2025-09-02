import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_pertama/controller/football_edit_controller.dart';

class EditPlayerPage extends StatelessWidget {
  const EditPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final editController = Get.put(FootballEditController());

    return Scaffold(
      appBar: AppBar(title: const Text("Edit Player")),
      body: Obx(() {
        if (editController.player.value == null) {
          return const Center(child: CircularProgressIndicator());
        }

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: editController.imageController,
                decoration: const InputDecoration(labelText: "Image URL"),
              ),
              TextField(
                controller: editController.nameController,
                decoration: const InputDecoration(labelText: "Name"),
              ),
              TextField(
                controller: editController.positionController,
                decoration: const InputDecoration(labelText: "Position"),
              ),
              TextField(
                controller: editController.numberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Number"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  editController.saveEdit();
                  Get.back();
                },
                child: const Text("Save"),
              ),
            ],
          ),
        );
      }),
    );
  }
}
