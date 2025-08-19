import 'package:flutter/material.dart';
import 'package:flutter_pertama/pages/calculatorpage.dart';
import 'package:flutter_pertama/pages/football_edit_page.dart';
import 'package:flutter_pertama/pages/football_page.dart';
import 'package:flutter_pertama/routers/routers.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: Approters.Calculator, page: () => CalculatorPage()),
    GetPage(name: Approters.footballplayer, page: () => FootballPage()),
    GetPage(
      name: Approters.footballedit,
      page: () => EditPlayerPage(), 
    ),
  ];
}
