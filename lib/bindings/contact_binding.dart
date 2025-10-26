import 'package:flutter_pertama/controller/contact_controller.dart';
import 'package:get/get.dart';

class ContactBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ContactController>(()=>ContactController());
  }
}