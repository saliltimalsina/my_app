import 'package:my_app/models/product.dart';
import 'package:my_app/screens/util/categories.dart';
import 'package:my_app/screens/util/productcard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashPage extends StatefulWidget {
  const DashPage({Key? key}) : super(key: key);

  @override
  State<DashPage> createState() => _DashPageState();
}

class _DashPageState extends State<DashPage> {
  final List productType = [
    [
      'Cooking',
      true,
    ],
    [
      'Crypto',
      false,
    ],
    [
      'Stonks',
      false,
    ],
    [
      'Tech',
      false,
    ],
  ];
  final List<Product> productlst = [
    Product(
      productImagePath: 'assets/profile.png',
      productName: 'Latte',
      productPrice: '\$4.00',
      productinfo: '\$4.00',
    ),
    Product(
      productImagePath: 'assets/logo.png',
      productName: 'Latte',
      productPrice: '\$4.00',
      productinfo: '\$4.00',
    ),
    Product(
      productImagePath: 'assets/icon.png',
      productName: 'Latte',
      productPrice: '\$4.00',
      productinfo: '\$4.00',
    ),
    Product(
      productImagePath: 'assets/icon.png',
      productName: 'Latte',
      productPrice: '\$4.00',
      productinfo: '\$4.00',
    ),
    Product(
      productImagePath: 'asset/icon.png',
      productName: 'Latte',
      productPrice: '\$4.00',
      productinfo: '\$4.00',
    ),
    Product(
      productImagePath: 'assets/icon.png',
      productName: 'Latte',
      productPrice: '\$4.00',
      productinfo: '\$4.00',
    ),
  ];
  void CategorySelected(int index) {
    setState(() {
      for (int i = 0; i < productType.length; i++) {
        productType[i][1] = false;
      }
      productType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C1015),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.person),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(65, 13, 17, 22),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ), // BottomNavigationBarItem
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "",
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Find the best Blogs for you ',
              style: GoogleFonts.bebasNeue(
                fontSize: 46,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFF141921),
                prefixIcon: const Icon(Icons.search),
                hintText: 'Find best blogs',
                focusedBorder: OutlineInputBorder(
                  // borderSide: BorderSide(color: Colors.grey.shade600),
                  borderRadius: BorderRadius.circular(15),
                ),
                enabledBorder: OutlineInputBorder(
                  // borderSide: BorderSide(color: Colors.grey.shade600),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),

          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productType.length,
              itemBuilder: ((context, index) {
                return Categories(
                  productType: productType[index][0],
                  isSelected: productType[index][1],
                  onTap: () {
                    CategorySelected(index);
                  },
                );
              }),
            ),
          ),
// horizontal listview of coffee tiles
          // Expanded(
          //   child: ListView(
          //     scrollDirection: Axis.vertical,
          //     children: [
          //       ProductCard(
          //         productImagePath: 'assets/images/icon.png',
          //         productName: 'Latte',
          //         productPrice: '\$4.00',
          //       ),
          //       ProductCard(
          //         productImagePath: 'assets/images/icon.png',
          //         productName: 'Latte',
          //         productPrice: '\$4.00',
          //       ),
          //     ],
          //   ),
          // ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height) /
                      0.73,
                ),
                itemCount: productlst.length,
                itemBuilder: ((context, index) {
                  return ProductCard(
                    productImagePath: productlst[index].productImagePath!,
                    productName: productlst[index].productName!,
                    productPrice: productlst[index].productPrice!,
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
