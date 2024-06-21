import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:untitled/pri.dart';
import 'package:untitled/t1.dart';
import 'package:untitled/t2.dart';
import 'create_account.dart';
import 'home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //     // options: FirebaseOptions(
  //     //     apiKey: "AIzaSyDYJAzUlpXeWtWDCnKP0cwMg5QII0mPtSY",
  //     //     appId: "1:995615347092:web:0dd4603a16026facde3f81",
  //     //     messagingSenderId: "995615347092",
  //     //     projectId: "signup-login-e2d01"
  //     // )
  //
  // );

  final prefs = await SharedPreferences.getInstance();
  final themeController = ThemeController(prefs);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );

  runApp(MyApp(themeController: themeController));
}



class MyApp extends StatelessWidget {
  final ThemeController themeController;

  const MyApp({Key? key, required this.themeController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeControllerProvider(
      controller: themeController,
      child: AnimatedBuilder(
        animation: themeController,
        builder: (context, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: themeController.currentThemeData,
            home: create(), // Your custom HomePage widget
          );
        },
      ),
    );
  }
}
