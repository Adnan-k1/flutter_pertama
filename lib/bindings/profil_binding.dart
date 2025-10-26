import 'package:get/get.dart';
import '../controller/profil_controller.dart'; 

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}