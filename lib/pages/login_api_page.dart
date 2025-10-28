import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/login_api_controller.dart';

class LoginApiPage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final LoginApiController loginController = Get.find<LoginApiController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login API")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: "Username"),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            Obx(() => loginController.isLoading.value
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () {
                      loginController.login(
                        usernameController.text,
                        passwordController.text,
                      );
                    },
                    child: const Text("Login"),
                  )),
            const SizedBox(height: 20),
            Obx(() => Text(loginController.message.value)),
          ],
        ),
      ),
    );
  }
}
