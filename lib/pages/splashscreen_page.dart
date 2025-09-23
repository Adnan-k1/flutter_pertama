import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_pertama/controller/splashscreen_controller.dart';
import 'package:flutter_pertama/controller/login_controller.dart';
import 'package:get/get.dart';


class SplashscreenPage extends StatelessWidget {
  SplashscreenPage({super.key});

    final controller = Get.find<SplashscreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(child: Text('Splashscreen Page'))),
    );
  }
}