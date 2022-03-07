import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'deals_carousel.dart';



class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Color? color =Colors.green.shade700;
    Size? size = MediaQuery.of(context).size;
    return SafeArea(
      child : Scaffold(
           appBar: AppBar(
             backgroundColor:color,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Sanjay Mart',
          style: GoogleFonts.montserrat(color: Colors.white),
        ),
          
      
        actions: [
          IconButton(
              icon: Icon(Icons.person_add_outlined, color: Colors.white),
              onPressed: () {
               
              }),
        ],
      ),
           body: SingleChildScrollView(
             child : Column(
               children: [
                 DealsForYouCarousel(),
                 Image.asset('assets/home1.jpeg',
                  height: size.height * 0.7,
                  width : size.width,
                  fit: BoxFit.cover, 
                 ),
                 Image.asset('assets/home2.jpeg',
                  height: size.height * 0.7,
                  width : size.width,
                  fit: BoxFit.cover, 
                 ),
                 Image.asset('assets/home3.jpg',
                  height: size.height * 0.7,
                  width : size.width,
                  fit: BoxFit.cover, 
                 )
               
               ],)
           )
      ),
    );
  }
}