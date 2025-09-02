import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_pertama/controller/main_menu_controller.dart';
import 'package:flutter_pertama/pages/calculatorpage.dart';
import 'package:flutter_pertama/pages/football_page.dart';
import 'package:flutter_pertama/pages/profile_page.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final MainPageController mainController = Get.put(MainPageController());

  final List<Widget> pages = [
    CalculatorPage(),
    FootballPage(),
    ProfilePage(),
  ];

  final List<String> titles = const ["Kalkulator", "Football", "Profile"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(titles[mainController.selectedIndex.value])),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.menu, size: 32, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "⚽ Main Menu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Obx(
              () => ListTile(
                leading: const Icon(Icons.calculate),
                title: const Text("Kalkulator"),
                selected: mainController.selectedIndex.value == 0,
                selectedTileColor: Colors.blue.withOpacity(0.1),
                onTap: () {
                  mainController.changePage(0);
                  Get.back();
                },
              ),
            ),
            Obx(
              () => ListTile(
                leading: const Icon(Icons.sports_soccer),
                title: const Text("Football"),
                selected: mainController.selectedIndex.value == 1,
                selectedTileColor: Colors.blue.withOpacity(0.1),
                onTap: () {
                  mainController.changePage(1);
                  Get.back();
                },
              ),
            ),
            Obx(
              () => ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Profile"),
                selected: mainController.selectedIndex.value == 2,
                selectedTileColor: Colors.blue.withOpacity(0.1),
                onTap: () {
                  mainController.changePage(2);
                  Get.back();
                },
              ),
            ),
          ],
        ),
      ),
      body: Obx(
        () => IndexedStack(
          index: mainController.selectedIndex.value,
          children: pages,
        ),
      ),
    );
  }
}
