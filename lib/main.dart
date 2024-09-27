import 'package:flutter/material.dart';
import 'package:skl_pertama_for_real/pages/HomePage.dart';
import 'package:skl_pertama_for_real/pages/cartPage.dart';
import 'package:skl_pertama_for_real/pages/chatPage.dart';
import 'package:skl_pertama_for_real/pages/itemPage.dart';
import 'package:skl_pertama_for_real/pages/LoginPage.dart';
import 'package:skl_pertama_for_real/pages/RegisterPage.dart';
import 'package:skl_pertama_for_real/pages/splashPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => SplashPage(),
        "login": (context) => const LoginPage(),
        "register": (context) => const RegisterPage(),
        "cartPage": (context) => const CartPage(),
        "homePage": (context) => const Homepage(),
        "itemPage": (context) => ItemPage(),
        "registerPage": (context) => const RegisterPage(),
        "chatPage": (context) => ChatPage(),
      },
    );
  }
}
