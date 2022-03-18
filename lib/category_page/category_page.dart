import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'category_model.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    Color? color = Colors.green.shade700;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: color,
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text(
            'Shop By Category',
            style: GoogleFonts.montserrat(color: Colors.white),
          ),
          actions: [
            IconButton(
                icon:
                    const Icon(Icons.person_add_outlined, color: Colors.white),
                onPressed: () {}),
          ],
        ),
        body: ListView.builder(
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return CategoryModel(
              asset: categoryList[index]['asset'],
              category: categoryList[index]['text'],
              listVar: fruitsList,
            );
          },
        ),
      ),
    );
  }
}

var categoryList = [
  {
    "asset": "assets/deals1.jpg",
    "text": "Fruits and Vegetables",
    "listVar": 'fruitsList',
  },
  {
    "asset": "assets/deals1.jpg",
    "text": "Fruits and Vegetables",
    "listVar": 'fruitsList',
  },
  {
    "asset": "assets/deals1.jpg",
    "text": "Fruits and Vegetables",
    "listVar": 'fruitsList',
  },
  {
    "asset": "assets/deals1.jpg",
    "text": "Fruits and Vegetables",
    "listVar": 'fruitsList',
  },
];

var fruitsList = [
  'All fruits and Vegetables',
  'Fresh Vegetables',
  'Herbs and Seasonings',
  'All fruits and Vegetables',
  'Fresh Vegetables',
  'Herbs and Seasonings',
];
