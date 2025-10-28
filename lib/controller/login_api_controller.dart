import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../routers/routers.dart';
import '../model/login_model.dart';
import '../network/api_service.dart';

class LoginApiController extends GetxController {
  var isLoading = false.obs;
  var message = ''.obs;

  Future<void> login(String username, String password) async {
    isLoading.value = true;
    try {
      LoginModel response = await ApiService.login(username, password);
      if (response.status) {
        final prefs = await SharedPreferences.getInstance();
        
        await prefs.setBool("isLoggedIn", true);
        await prefs.setString("token", response.token ?? "");

        Get.offAllNamed(Approters.mainmenu);
      } else {
        message.value = "Login gagal: ${response.message}";
      }
    } catch (e) {
      message.value = "Error: $e";
    } finally {
      isLoading.value = false;
    }
  }
}
