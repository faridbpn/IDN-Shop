import 'package:flutter/material.dart';
import 'package:skl_pertama_for_real/pages/cartPage.dart';
import 'package:skl_pertama_for_real/pages/itemPage.dart';
import 'package:skl_pertama_for_real/pages/LoginPage.dart';
import 'package:skl_pertama_for_real/pages/RegisterPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => LoginPage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
        "registerPage": (context) => RegisterPage(),
      },
    );
  }
}
