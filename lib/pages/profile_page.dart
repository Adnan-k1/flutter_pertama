import 'package:flutter/material.dart';
import 'package:flutter_pertama/pages/login_page.dart';
import 'package:get/get.dart';
import 'package:flutter_pertama/pages/login_page.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile User"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("asset/image/image.png"),
            ),
            const SizedBox(height: 20),
            const Text(
              "gian adnan sumaryo",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              "adnansumaryogian@gmail.com",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Get.offAll(() =>  LoginPage()); 
              },
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
