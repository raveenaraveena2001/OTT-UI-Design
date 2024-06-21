
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/t2.dart';


class ThemeController extends ChangeNotifier {
  static const themePrefKey = 'theme';
  final SharedPreferences prefs;
  String _currentTheme;

  ThemeController(this.prefs) : _currentTheme = prefs.getString(themePrefKey) ?? 'light';

  String get currentTheme => _currentTheme;

  ThemeData get currentThemeData {
    switch (_currentTheme) {
      case 'dark':
        return ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
          primaryColor: Colors.blue,
        );
      case 'light':
      default:
        return ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
        );
    }
  }

  void setTheme(String theme) {
    if (_currentTheme != theme) {
      _currentTheme = theme;
      prefs.setString(themePrefKey, theme);
      notifyListeners();
    }
  }

  static ThemeController of(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<ThemeControllerProvider>();
    if (provider == null) throw Exception('ThemeControllerProvider not found in context');
    return provider.controller;
  }
}
