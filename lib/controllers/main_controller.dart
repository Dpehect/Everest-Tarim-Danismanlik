import 'package:flutter/material.dart';
import 'package:getagriculture/pages/news_section.dart';
import 'package:getagriculture/pages/database_section.dart';
import 'package:getagriculture/pages/currency_section.dart';
import 'package:getagriculture/pages/weather_section.dart';
import 'package:getagriculture/pages/profilesection/profile.dart';

class MainController {
  static List<Widget> getPages() {
    return [
      NewsSection(),
      Sayfa2(),
      CurrencyPage(),
      WeatherSection(),
      Profile(),
    ];
  }

  static List<String> getIconPaths() {
    return [
      'assets/images/main/newspaper.png',
      'assets/images/main/bilgiveri.png',
      'assets/images/main/currency.png',
      'assets/images/main/weather.png',
      'assets/images/main/user.png',
    ];
  }

  static void printCurrentIndex(int currentIndex) {
    print("Current Index: $currentIndex");
  }
}
