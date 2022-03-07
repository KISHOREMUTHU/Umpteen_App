import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ReferAndEarn extends StatefulWidget {
  const ReferAndEarn({ Key? key }) : super(key: key);

  @override
  State<ReferAndEarn> createState() => _ReferAndEarnState();
}

class _ReferAndEarnState extends State<ReferAndEarn> {
  @override
  Widget build(BuildContext context) {
   Color? color = Colors.green.shade700;
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
         body: Container(
           color : Colors.grey.shade300,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,

             children: [
               Center(
                 child: Container(
                   height: size.height * 0.45,
                   width: size.width *0.95,
                   decoration: BoxDecoration  (
                     borderRadius: BorderRadius.circular(5),
                     image: DecorationImage(
                       fit : BoxFit.cover,
                       image: AssetImage('assets/refer_and_earn.png')),
                   ),
                 ),
               ),
             ],
           ),
         ),
      ),
    );
  }
}