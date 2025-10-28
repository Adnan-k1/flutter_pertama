import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../routers/routers.dart';

class ProfileController extends GetxController {
  Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear(); // hapus semua data login
    Get.offAllNamed(Approters.loginapi);
  }
}
