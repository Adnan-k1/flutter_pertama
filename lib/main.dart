import 'package:flutter/material.dart';
import 'package:flutter_pertama/routers/pages.dart';
import 'package:get/get.dart';
import 'package:flutter_pertama/login.dart';
import 'package:flutter_pertama/routers/routers.dart'; // Import your AppPages class

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
      initialRoute: Approters.login, 
      getPages: AppPages.routes,
    );
  }
}