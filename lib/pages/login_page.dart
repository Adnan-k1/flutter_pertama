import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_pertama/controller/login_controller.dart';
import 'package:flutter_pertama/componets/input_field.dart';
import 'package:flutter_pertama/componets/widget_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  
  final loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            InputField(
              controller: loginController.usernameController,
              label: "Username",
              hintText: "Enter your username",
            ),
            const SizedBox(height: 16),
            
            InputField(
              controller: loginController.passwordController,
              label: "Password",
              hintText: "Enter your password",
              obscureText: true,
            ),
            const SizedBox(height: 24),
            CoustumButton(
              text: "LOGIN",
              textColor: Colors.white,
              onPressed: () {
                loginController.login();
              },
            ),
          ],
        ),
      ),
    );
  }
}
