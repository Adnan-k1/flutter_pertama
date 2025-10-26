import 'package:get/get.dart';
import '../network/api_service.dart';
import '../model/login_model.dart';


class LoginApiController extends GetxController {
   var isLoading = false.obs;
  var message = ''.obs;

  Future<void> login(String username, String password) async {
    try {
      isLoading.value = true;

      LoginModel response = await ApiService.login(username, password);

      if (response.status) {
        message.value = "Login berhasil: ${response.message}";
        print("Token: ${response.token}");
        // Navigasi ke halaman utama, misal:
        // Get.offAllNamed('/home');
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