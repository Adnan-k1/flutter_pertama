import 'package:flutter_pertama/controller/exemple_controller.dart';
import 'package:get/get.dart';

class ExempleBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
     Get.lazyPut<ExempleController>(()=>ExempleController());
  }
}