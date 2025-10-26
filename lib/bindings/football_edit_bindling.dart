// football_edit_bindling.dart
import 'package:flutter_pertama/controller/football_edit_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_pertama/controller/football_controller.dart';

class FootballEditBindling extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FootballController>(() => FootballController());
    // Tambahkan controller lain yang dibutuhkan EditPlayerPage di sini
    Get.lazyPut<FootballEditController>(() => FootballEditController());
  }
}