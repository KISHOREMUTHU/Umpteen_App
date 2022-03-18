import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umpteen_day1/home/deals_carousel.dart';

import '../category_page/category_menu_nav.dart';

class ShopByCategory extends StatefulWidget {
  const ShopByCategory({Key? key}) : super(key: key);

  @override
  _ShopByCategoryState createState() => _ShopByCategoryState();
}

class _ShopByCategoryState extends State<ShopByCategory> {
  @override
  Widget build(BuildContext context) {
    Size? size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        title: Text('Shop By Category'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DealsForYouCarousel(),
            Container(
              color: Colors.white,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                  left: 15,
                ),
                child: Text(
                  'Shop By Category',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.nunito(
                    color: Colors.green.shade700,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CategoryNav(
                              title: "Products",
                            )));
              },
              child: Image.asset(
                'assets/home3.jpg',
                width: size.width,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
