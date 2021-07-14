import 'package:flutter/material.dart';
import 'package:intern_ecommercec/pages/mainScreen.dart';
import 'package:intern_ecommercec/pages/mainScreen1.dart';
import 'package:intern_ecommercec/screens/s1home.dart';
import 'package:intern_ecommercec/pages/login.dart';
import 'package:intern_ecommercec/pages/productPageOne.dart';
import 'package:intern_ecommercec/pages/signup.dart';
import 'package:intern_ecommercec/pages/splash.dart';
import 'package:intern_ecommercec/screens/s2defaultTabController.dart';
import 'package:intern_ecommercec/widgets/discoutntsideScroller.dart';
import 'package:ms_material_color/ms_material_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MsMaterialColor(0xFF7986CB),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "/": (context) => SplashPage(),
        "login": (context) => LoginPage(),
        "signup": (context) => SignupPage(),
        "home": (context) => MainScreen(),
      },
    );
  }
}
