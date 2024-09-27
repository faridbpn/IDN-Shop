import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:skl_pertama_for_real/pages/Homepage.dart';
import 'package:skl_pertama_for_real/pages/CartPage.dart';
import 'package:skl_pertama_for_real/pages/profilPage.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {

  // List of pages
  final _pages = [
    const Homepage(),
    const CartPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      color: const Color(0xFF4C53A5),
      height: 60,
      items: const <Widget>[
        Icon(Icons.home, size: 30, color: Colors.white),
        Icon(Icons.shopping_cart, size: 30, color: Colors.white),
        Icon(Icons.person, size: 30, color: Colors.white),
      ],
      onTap: (index) {
        setState(() {
// Update the page index
        });
        // Navigate to the selected page
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => _pages[index]),
        );
      },
    );
  }
}
