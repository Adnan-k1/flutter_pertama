import 'package:flutter_pertama/controller/football_controller.dart';
import 'package:get/get.dart';

class FootballBindling extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<FootballController>(()=>FootballController());
    
  }
}