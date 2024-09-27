// ignore: file_names
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:skl_pertama_for_real/pages/HomePage.dart';
import 'package:skl_pertama_for_real/pages/LoginPage.dart';
import 'package:skl_pertama_for_real/widgets/HomeAppBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Posisi lingkaran atas
          const Positioned(
            top: -50,
            right: -50,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Color(0xFF4C53A5),
            ),
          ),
          // Posisi lingkaran bawah
          const Positioned(
            bottom: -50,
            left: -50,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Color(0xFF4C53A5),
            ),
          ),
          // Isi tengah halaman
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Gambar logo
                const Icon(
                  Icons.local_drink,
                  size: 80,
                  color: Color(0xFF4C53A5),
                ),
                const SizedBox(height: 20),
                // Teks "deeps"
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(text: 'J'),
                      TextSpan(
                        text: 'A',
                        style: TextStyle(color: Color(0xFF4C53A5)),
                      ),
                      TextSpan(text: 'WA'),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                // Teks "Tumbas.co"
                Text(
                  'Tumbas.co',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 2,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 30),
                // Tambahkan tombol di bawah tulisan Tumbas.co
                ElevatedButton(
                  onPressed: () {
                    // Navigasi ke LoginPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    backgroundColor: Color(0xFF4C53A5),
                  ),
                  child: const Text(
                    'Gasken',
                    style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}