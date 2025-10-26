import 'package:flutter/material.dart';
import 'package:flutter_pertama/routers/routers.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController{

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  login() async {
    
    if(usernameController.text.toString() == "admin" && passwordController.text.toString() == "1234"){
      final prefs = await SharedPreferences.getInstance();
      
      prefs.setString("username", usernameController.text.toString());

      await prefs.setString("username", usernameController.text);
      await prefs.setBool("isLoggedIn", true);
      
      Get.offAllNamed(Approters.mainmenu);
    }else{
      
      Get.snackbar("Error", "Username atau password salah!");
    }
  }
}