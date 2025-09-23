import 'package:flutter_pertama/routers/routers.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashscreenController extends GetxController{
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checklogin();
  }

  checklogin()async{
    final prefs = await SharedPreferences.getInstance();
    final savedusername =prefs.getString("username");
        await Future.delayed( Duration(seconds: 3));
    if(savedusername != null){
      Get.offAllNamed(Approters.login);
    }else{
      Get.offAllNamed(Approters.profile);
    }

  }
}