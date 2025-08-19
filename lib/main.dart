import 'package:flutter/material.dart';
import 'package:flutter_pertama/login.dart';
import 'package:get/get.dart';
import 'package:flutter_pertama/routers/routers.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Nav Example',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        
      ],
    );
  }
}
