import 'package:flutter/material.dart';
import 'package:flutter_pertama/Home.dart';
import 'package:flutter_pertama/register.dart';
import 'componets/widget_button.dart';
import 'componets/input_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPagetState();
}

class LoginPagetState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void handleLogin() {
    final email = emailController.text.trim();
    final password = passwordController.text;

    if (email == "kiran" && password == "123") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login sukses!"), backgroundColor: Colors.green),
      );

      Future.delayed(Duration(seconds: 1), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login gagal!"), backgroundColor: Colors.red),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset('asset/image/logo.jpg', width: 150),
            SizedBox(height: 20),
            Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800],
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Masukkan email dan password Anda",
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
            SizedBox(height: 25),
            InputField(
              controller: emailController,
              label: "Email",
              hintText: "Masukkan email",
              prefixIcon: Icons.email,
            ),

            SizedBox(height: 15),
            InputField(
              controller: passwordController,
              label: "password",
              hintText: "masukan password anda",
              obscureText: true,
              prefixIcon: Icons.lock,
            ),
            SizedBox(height: 25),

            CoustumButton(text: "Login", onPressed: handleLogin),

            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum punya akun? "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                  child: Text(
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
