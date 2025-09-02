import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_pertama/login.dart';
import 'package:flutter_pertama/pages/main_menu_page.dart';
import 'package:flutter_pertama/pages/calculatorpage.dart';
import 'package:flutter_pertama/pages/football_page.dart';
import 'package:flutter_pertama/pages/football_edit_page.dart';
import 'package:flutter_pertama/routers/routers.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Approters.login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: Approters.mainmenu,
      page: () => MainMenuPage(),
    ),
    GetPage(
      name: Approters.calculator,
      page: () => CalculatorPage(),
    ),
    GetPage(
      name: Approters.footballplayer,
      page: () => FootballPage(),
    ),
    GetPage(
      name: Approters.footballedit,
      page: () => const EditPlayerPage(),
    ),
  ];
}
