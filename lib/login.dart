import 'package:flutter/material.dart';
import 'package:flutter_pertama/home.dart';
import 'package:flutter_pertama/register.dart';
import 'componets/widget_button.dart';
import 'componets/input_field.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void handleLogin() {
    final email = emailController.text.trim();
    final password = passwordController.text;

    if (email == "kiran" && password == "123") {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Login sukses!"),
          backgroundColor: Colors.green,
        ),
      );

      Future.delayed(const Duration(seconds: 1), () {
        
        Get.off(() => HomePage());
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Login gagal!"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login Page"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.asset('asset/image/logo.jpg', width: 150),
            const SizedBox(height: 20),
            Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800],
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "Masukkan email dan password Anda",
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
            const SizedBox(height: 25),

            InputField(
              controller: emailController,
              label: "Email",
              hintText: "Masukkan email",
              prefixIcon: Icons.email,
            ),

            const SizedBox(height: 15),

            InputField(
              controller: passwordController,
              label: "Password",
              hintText: "Masukkan password Anda",
              obscureText: true,
              prefixIcon: Icons.lock,
            ),

            const SizedBox(height: 25),

            CoustumButton(text: "Login", onPressed: handleLogin),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Belum punya akun? "),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const Register());
                  },
                  child: const Text(
                    "Daftar di sini",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
