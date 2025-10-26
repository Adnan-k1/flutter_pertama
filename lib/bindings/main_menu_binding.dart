// lib/bindings/main_menu_binding.dart

import 'package:get/get.dart';
import 'package:flutter_pertama/controller/main_menu_controller.dart';
import 'package:flutter_pertama/controller/football_controller.dart';

class MainMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainPageController>(() => MainPageController());
    Get.lazyPut<FootballController>(() => FootballController());
  }
}