import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemsWidget extends StatelessWidget {
  ItemsWidget({super.key});

  // List untuk nama produk
  List<String> myProductName = [
    'Vandal Common Skin',
    'IKEA Table',
    'Instan Pithik',
    'Headphone',
  ];

  // List untuk deskripsi produk
  List<String> productDescriptions = [
    'Basic skin namun rare skill.',
    'Meja limithed edition dibuat dengan kayu pohon pisang sunda.',
    'Tinggal campur air dingin langsung siap dikejar.',
    'Penyumbat telinga dengan bonus telinga agar telinga anda makin kece',
  ];

  // List untuk harga produk
  List<String> productPrices = [
    '\$10',
    '\$45',
    '\$30',
    '\$25',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 0; i < myProductName.length; i++)
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color(0xFF4C53A5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        '-50%',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Icon(Icons.favorite_border, color: Colors.red)
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'itemPage');
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    // Gambar sesuai produk
                    child: Image.asset(
                      'images/${i + 1}.png', // Gunakan i+1 jika file gambar dimulai dari 1.jpeg
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  // Nama produk dari list
                  child: Text(
                    myProductName[i],
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  // Deskripsi produk dari list
                  child: Text(
                    productDescriptions[i],
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Harga produk dari list
                      Text(
                        productPrices[i],
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                      const Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0xFF4C53A5),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
