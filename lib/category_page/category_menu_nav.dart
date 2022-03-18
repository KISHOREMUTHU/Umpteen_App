import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umpteen_day1/product_data/product_data.dart';

class CategoryNav extends StatefulWidget {
  final String? title;
  const CategoryNav({Key? key, this.title}) : super(key: key);

  @override
  _CategoryNavState createState() => _CategoryNavState();
}

class _CategoryNavState extends State<CategoryNav> {
  @override
  Widget build(BuildContext context) {
    Color? color = Colors.green.shade700;
    Size? size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color,
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text(
            widget.title!,
            style: GoogleFonts.montserrat(color: Colors.white),
          ),
          actions: [
            IconButton(
                icon:
                    const Icon(Icons.person_add_outlined, color: Colors.white),
                onPressed: () {}),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProductData(),
            ],
          ),
        ));
  }
}
