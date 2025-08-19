import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_pertama/controller/football_controller.dart';
import 'package:flutter_pertama/routers/routers.dart';

class FootballPage extends StatelessWidget {
  final FootballController footballController = Get.put(FootballController());

  FootballPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Football")),
      body: Obx(
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
                onPressed: () {
                  Get.toNamed(
                    Approters.footballedit,
                    arguments: index,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
