

import 'package:flutter/material.dart';
import 'package:flutter_pertama/kalkulator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void handlekalkulator() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Kalkulator()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('asset/image/logo.jpg', width: 200)),
            Center(
              child: Text(
                "Welcome to kalkulator",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: handlekalkulator,
                child: Text("Pindah ke Kalkulator"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
