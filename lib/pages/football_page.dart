import 'package:flutter/material.dart';
import 'package:flutter_pertama/controller/football_controller.dart';
import 'package:flutter_pertama/pages/football_edit_page.dart';
import 'package:get/get.dart';

class FootballPage extends StatelessWidget {
  FootballPage({super.key});

  final FootballController footballController = Get.put(FootballController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Football")),
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
                icon: Icon(Icons.edit),
                onPressed: () {
                  Get.to(() => EditPlayerPage(index: index));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
