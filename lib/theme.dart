import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends ChangeNotifier {
  final SharedPreferences prefs;
  late ThemeData _themeData;

  ThemeController({required this.prefs}) {
    _loadTheme();
  }

  void _loadTheme() {
    bool isDark = prefs.getBool('isDarkTheme') ?? false;
    _themeData = isDark ? ThemeData.dark() : ThemeData.light();
    notifyListeners();
  }

  ThemeData get themeData => _themeData;

  void setDarkMode(bool isDark) async {
    _themeData = isDark ? ThemeData.dark() : ThemeData.light();
    await prefs.setBool('isDarkTheme', isDark);
    notifyListeners();
  }
}

