import 'package:get/get.dart';
import '../controller/login_api_controller.dart';

class LoginApiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginApiController());
  }
}
