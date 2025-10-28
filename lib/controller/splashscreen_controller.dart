import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../routers/routers.dart';

class SplashscreenController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    checkLogin();
  }

  Future<void> checkLogin() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final isLoggedIn = prefs.getBool("isLoggedIn") ?? false;
      final token = prefs.getString("token") ?? "";

      await Future.delayed(const Duration(seconds: 2));

      if (isLoggedIn && token.isNotEmpty) {
        Get.offAllNamed(Approters.mainmenu);
      } else {
        Get.offAllNamed(Approters.loginapi);
      }
    } catch (e) {
      Get.offAllNamed(Approters.loginapi);
    }
  }
}
