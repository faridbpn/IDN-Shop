import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // List nama kategori dan gambar yang akan digunakan
    final List<Map<String, String>> categories = [
      {'name': 'Gun', 'image': '1.png'},
      {'name': 'Furniture', 'image': '2.png'},
      {'name': 'Food', 'image': '3.png'},
      {'name': 'Electronic', 'image': '4.png'},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // Looping menggunakan data dari list categories
          for (int i = 0; i < categories.length; i++)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  // Menampilkan gambar sesuai dengan kategori
                  Image.asset(
                    'images/${categories[i]['image']}', // Nama file gambar
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(width: 10), // Memberikan jarak antara gambar dan teks
                  // Menampilkan nama kategori
                  Text(
                    categories[i]['name']!, // Nama kategori
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
