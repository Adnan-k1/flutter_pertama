import 'package:flutter/material.dart';
import 'package:flutter_pertama/bindings/Calculator_binding.dart';
import 'package:flutter_pertama/bindings/football_bindling.dart';
import 'package:flutter_pertama/bindings/login_binding.dart';
import 'package:flutter_pertama/bindings/splashcreen_binding.dart';
import 'package:flutter_pertama/controller/football_controller.dart';
import 'package:flutter_pertama/pages/login_page.dart';
import 'package:flutter_pertama/pages/splashscreen_page.dart';
import 'package:get/get.dart';

import 'package:flutter_pertama/pages/main_menu_page.dart';
import 'package:flutter_pertama/pages/calculatorpage.dart';
import 'package:flutter_pertama/pages/football_page.dart';
import 'package:flutter_pertama/pages/football_edit_page.dart';
import 'package:flutter_pertama/routers/routers.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Approters.login,
      page: () =>  LoginPage(),
    ),
    GetPage(
      name: Approters.mainmenu,
      page: () => MainMenuPage(),
    ),
    GetPage(
      name: Approters.calculator,
      page: () => CalculatorPage(),
      binding: CalculatorBinding(),
    ),
    GetPage(
      name: Approters.footballplayer,
      page: () => FootballPage(),
       binding: FootballBindling(),
    ),
    GetPage(
      name: Approters.footballedit,
      page: () => const EditPlayerPage(),
      binding: FootballBindling(),
    ),
    GetPage(
     name: Approters.splashscreen,
     page: () =>SplashscreenPage(),
     binding: SplashscreenBinding()
    ),
    GetPage(
     name: Approters.login,
     page: () =>LoginPage(),
     binding: LoginBinding()
    ),
  ];
}
