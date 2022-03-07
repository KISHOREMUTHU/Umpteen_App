import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryModel extends StatelessWidget {
  final String? asset;
  final String? category;

  const CategoryModel({Key? key, this.asset, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size? size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.05,
           
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                    SizedBox(
                      width: size.width * 0.19,
                      child: Image.asset(asset!)),
                    SizedBox(
                      width: size.width * 0.76,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 5,),
                          Text(category!,
                            style: GoogleFonts.montserrat(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(Icons.arrow_drop_down_circle_outlined),
                            ),
                        ],),
                    ),
                    
                 ],
              
              ),

          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Divider(
              color: Colors.black,
              thickness: 0.5,
            ),
          ),
        ],
      ),
    );
  
  }
}

