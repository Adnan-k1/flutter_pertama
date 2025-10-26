import 'package:flutter_pertama/routers/routers.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController {
  void logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear(); // atau prefs.setBool('isLoggedIn', false);
    Get.offAllNamed(Approters.login);
  }
}
