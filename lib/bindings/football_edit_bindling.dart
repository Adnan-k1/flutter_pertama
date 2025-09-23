import 'package:flutter_pertama/controller/football_edit_controller.dart';
import 'package:get/get.dart';

class FootballEditBindling extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<FootballEditController>(()=>FootballEditController());
  }
}