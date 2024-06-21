import 'package:flutter/material.dart';
import 't1.dart';

class ThemeControllerProvider extends InheritedWidget {
  final ThemeController controller;

  const ThemeControllerProvider({Key? key, required this.controller, required Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(ThemeControllerProvider old) => controller != old.controller;
}
