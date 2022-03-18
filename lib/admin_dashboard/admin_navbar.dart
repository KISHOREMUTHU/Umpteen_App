import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umpteen_day1/admin_app/admin_delivery_page.dart';
import 'package:umpteen_day1/my_orders/myOrders.dart';

import 'dashboard_page.dart';

class AdminNavbarWidget extends StatefulWidget {
  const AdminNavbarWidget({Key? key}) : super(key: key);

  @override
  State<AdminNavbarWidget> createState() => _AdminNavbarWidgetState();
}

class _AdminNavbarWidgetState extends State<AdminNavbarWidget> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Color? color = Colors.green.shade700;
    final tabs = [
      const AdminDeliveryPanel(),
      const MyOrders(),
      const DashboardPage()
    ];
    return SafeArea(
      child: Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavyBar(
          backgroundColor: Colors.grey.shade100,
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: const FaIcon(FontAwesomeIcons.truckLoading, size: 20),
              title: Text(
                'Delivery',
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
                'Orders',
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                ),
              ),
              activeColor: color,
              inactiveColor: color,
            ),
            BottomNavyBarItem(
              icon: const FaIcon(FontAwesomeIcons.personBooth, size: 20),
              title: Text(
                'Admin',
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
