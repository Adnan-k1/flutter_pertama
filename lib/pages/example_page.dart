import 'package:flutter/material.dart';
import 'package:flutter_pertama/controller/exemple_controller.dart';
import 'package:flutter_pertama/pages/mobile/exemple_mobile.dart';
import 'package:flutter_pertama/pages/widescreen/exemple_widescreen.dart';
import 'package:get/get.dart';

class ExamplePage extends StatelessWidget {
  ExamplePage({super.key});

  final controller = Get.find<ExempleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          controller.updateLayout(constraints);
          return Obx(() => controller.isMobile.value
              ? const ExempleMobile()
              : const ExempleWidescreen());
        },
      ),
    );
  }
}
