// lib/routers/app_pages.dart

import 'package:flutter/material.dart';
import 'package:flutter_pertama/bindings/football_edit_bindling.dart';
import 'package:get/get.dart';
import 'package:flutter_pertama/bindings/Calculator_binding.dart';
import 'package:flutter_pertama/bindings/football_bindling.dart';
import 'package:flutter_pertama/bindings/login_binding.dart';
import 'package:flutter_pertama/bindings/splashcreen_binding.dart';
import 'package:flutter_pertama/bindings/main_menu_binding.dart';
import 'package:flutter_pertama/pages/login_page.dart';
import 'package:flutter_pertama/pages/splashscreen_page.dart';
import 'package:flutter_pertama/pages/main_menu_page.dart';
import 'package:flutter_pertama/pages/calculatorpage.dart';
import 'package:flutter_pertama/pages/football_page.dart';
import 'package:flutter_pertama/pages/football_edit_page.dart';
import 'package:flutter_pertama/pages/profile_page.dart';
import 'package:flutter_pertama/routers/routers.dart';
import 'package:flutter_pertama/pages/contact_page.dart';
import 'package:flutter_pertama/pages/example_page.dart';
import 'package:flutter_pertama/bindings/contact_binding.dart';
import 'package:flutter_pertama/bindings/exemple_binding.dart';
import 'package:flutter_pertama/pages/login_api_page.dart';
import 'package:flutter_pertama/bindings/Login_api_binding.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Approters.splashscreen,
      page: () => SplashscreenPage(),
      binding: SplashscreenBinding(),
    ),
    
    GetPage(
      name: Approters.mainmenu,
      page: () => MainMenuPage(),
      binding: MainMenuBinding(),
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
      page: () => EditPlayerPage(),
      binding: FootballEditBindling(),
    ),
    GetPage(name: Approters.profile, page: () => const ProfilePage()),
    GetPage(
      name: Approters.contact,
      page: () => const ContactPage(),
      binding: ContactBinding(),
    ),
    GetPage(
      name: Approters.Examplescreen,
      page: () => ExamplePage(),
      binding: ExempleBinding(),
    ),
    GetPage(
      name: Approters.loginapi,
      page: () => LoginApiPage(),
      binding: LoginApiBinding(),
    ),
  ];
}
