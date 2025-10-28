import 'package:flutter/material.dart';
import 'package:flutter_pertama/routers/pages.dart';
import 'package:get/get.dart';

import 'bindings/splashcreen_binding.dart';
import 'routers/routers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: SplashscreenBinding(),
      initialRoute: Approters.splashscreen,
      getPages: AppPages.routes,
    );
  }
}
