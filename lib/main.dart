import 'package:flutter/material.dart';
import 'package:flutter_pertama/routers/pages.dart';
import 'package:get/get.dart';
import 'package:flutter_pertama/routers/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer Navigation Example',
      initialRoute: Approters.login,
      getPages: AppPages.routes,
    );
  }
}
