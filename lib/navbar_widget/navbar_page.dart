import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umpteen_day1/admin_app/admin_delivery_page.dart';
import 'package:umpteen_day1/category_page/category_page.dart';
import 'package:umpteen_day1/home/home_page.dart';

import '../cart_page/cart_page.dart';
import '../search_page/search_page.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({Key? key}) : super(key: key);

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Color? color = Colors.green.shade700;

    final tabs = [
      const HomePage(),
      const CategoryPage(),
      const SearchPage(),
      const AdminDeliveryPanel(),
      CartPage(),
    ];
    return SafeArea(
      child: Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavyBar(
          backgroundColor: Colors.grey.shade100,
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: const FaIcon(FontAwesomeIcons.home, size: 20),
              title: Text(
                'Home',
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                ),
              ),
              activeColor: color,
              inactiveColor: color,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.category, size: 20),
              title: Text(
                'Categories',
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                ),
              ),
              activeColor: color,
              inactiveColor: color,
            ),
            BottomNavyBarItem(
              icon: const FaIcon(FontAwesomeIcons.search, size: 20),
              title: Text(
                'Search',
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                ),
              ),
              activeColor: color,
              inactiveColor: color,
            ),
            BottomNavyBarItem(
              icon: const FaIcon(FontAwesomeIcons.list, size: 20),
              title: Text(
                'My List',
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                ),
              ),
              activeColor: color,
              inactiveColor: color,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.shopping_cart, size: 20),
              title: Text(
                'Cart',
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                ),
              ),
              activeColor: color,
              inactiveColor: color,
            ),
          ],
          animationDuration: const Duration(milliseconds: 400),
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
