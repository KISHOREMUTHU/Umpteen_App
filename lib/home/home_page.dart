import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umpteen_day1/category_page/category_menu_nav.dart';
import 'package:umpteen_day1/search_page/shop_by_category.dart';

import '../account_page/account_page.dart';
import '../category_page/category_page.dart';
import 'deals_carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? searchTap = false;
  @override
  Widget build(BuildContext context) {
    Color? color = Colors.green.shade700;
    Size? size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(124.0),
            child: Container(
              color: color,
              child: Column(
                children: [
                  AppBar(
                    backgroundColor: color,
                    automaticallyImplyLeading: false,
                    iconTheme: const IconThemeData(color: Colors.green),
                    title: Text(
                      'Sanjay Mart',
                      style: GoogleFonts.montserrat(color: Colors.white),
                    ),
                    actions: [
                      IconButton(
                          icon: const Icon(Icons.person_add_outlined,
                              color: Colors.white),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AccountPage()));
                          }),
                    ],
                  ),
                  TextFieldController(
                    child: TextField(
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            searchTap = true;
                          });
                        } else {
                          setState(() {
                            searchTap = false;
                          });
                        }
                      },
                      decoration: const InputDecoration(
                        icon: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                        hintText: "Search For Products",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              searchTap == false
                  ? SizedBox()
                  : Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 0),
                            child: Text(
                              'Popular Searches',
                              style: GoogleFonts.exo(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryPage()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Chip(
                                    label: Text(
                                      'rice',
                                      style: GoogleFonts.exo(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryPage()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Chip(
                                    label: Text(
                                      'bread',
                                      style: GoogleFonts.exo(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CategoryNav()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Chip(
                                    label: Text(
                                      'biscuits',
                                      style: GoogleFonts.exo(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CategoryNav()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Chip(
                                    label: Text(
                                      'cheese',
                                      style: GoogleFonts.exo(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CategoryNav()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Chip(
                                    label: Text(
                                      'vegetables',
                                      style: GoogleFonts.exo(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CategoryNav()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Chip(
                                    label: Text(
                                      'mango',
                                      style: GoogleFonts.exo(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CategoryNav()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Chip(
                                    label: Text(
                                      'tea',
                                      style: GoogleFonts.exo(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CategoryNav()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Chip(
                                    label: Text(
                                      'namkeen',
                                      style: GoogleFonts.exo(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CategoryNav()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Chip(
                                    label: Text(
                                      'egg',
                                      style: GoogleFonts.exo(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CategoryNav()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Chip(
                                    label: Text(
                                      'mop',
                                      style: GoogleFonts.exo(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
              const DealsForYouCarousel(),
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
              Container(
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.only(right: 200.0),
                  child: Divider(
                    thickness: 2,
                    color: Colors.green,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              SizedBox(height: size.height * 0.02),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      categoryContainer(size, 'assets/cat1.jpg')!,
                      categoryContainer(size, 'assets/cat2.jpg')!,
                      categoryContainer(size, 'assets/cat3.jpg')!,
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      categoryContainer(size, 'assets/cat4.jpg')!,
                      categoryContainer(size, 'assets/cat5.jpg')!,
                      categoryContainer(size, 'assets/cat6.jpg')!,
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      categoryContainer(size, 'assets/cat7.jpg')!,
                      categoryContainer(size, 'assets/cat8.jpg')!,
                      categoryContainer(size, 'assets/cat9.jpg')!,
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      categoryContainer(size, 'assets/cat10.jpg')!,
                      categoryContainer(size, 'assets/cat11.jpg')!,
                      categoryContainer(size, 'assets/cat11.jpg')!,
                    ],
                  )
                ],
              ),
              SizedBox(height: size.height * 0.02),
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
                  'assets/home2.jpeg',
                  height: size.height * 0.7,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ))),
    );
  }

  Widget? categoryContainer(Size size, String? img) {
    return Card(
      elevation: 10,
      child: Container(
        height: size.width * 0.31,
        width: size.width * 0.31,
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ShopByCategory()));
          },
          child: Image.asset(
            img!,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class TextFieldController extends StatelessWidget {
  final Widget? child;

  const TextFieldController({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: size.width * 0.95,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [BoxShadow(spreadRadius: 0.1, blurRadius: 2)]),
          child: child,
        ),
      ),
    );
  }
}
