import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umpteen_day1/user_details/text_field_controller.dart';


class UserDetailsPage extends StatefulWidget {
  const UserDetailsPage({ Key? key }) : super(key: key);

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: SingleChildScrollView(
           child:Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment:CrossAxisAlignment.center ,
             children: [
                   detailsCollection("Your Name"),
                   digitsCollection("Phone Number"),
                   detailsCollection("E-mail"),
                   detailsCollection("Address"),
                   
                   continueWidget("Continue", context)

             ],
             ),
            ),

    );
  }
}


Widget detailsCollection(String? detail){

    return Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Padding(
                padding: const EdgeInsets.symmetric(vertical : 5.0, horizontal : 15.0),
                child: Text(detail!,
                 style: GoogleFonts.montserrat(
                        fontSize : 16,
                      
                 ),
                ),
              ),
         TextFieldController(
                child: TextField(
                  onChanged: (value) {},
                 
                  decoration:const InputDecoration(
                     border: InputBorder.none,
                  ),
                ),
              ),       
       ],
    );

}


Widget digitsCollection(String? detail){

    return Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Padding(
                padding: const EdgeInsets.symmetric(vertical : 10.0, horizontal : 20.0),
                child: Text(detail!,
                 style: GoogleFonts.montserrat(
                        fontSize : 18,
                      
                 ),
                ),
              ),
         TextFieldController(
                child: TextField(
                  onChanged: (value) {},
                 keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration:const InputDecoration(
                     border: InputBorder.none,
                  ),
                ),
              ),       
       ],
    );

}



Widget continueWidget(String? text, BuildContext context){
  Size? size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal :20.0,vertical : 30),
        child: Container(
          width : size.width * 0.8,
          height: size.height * 0.07,
          decoration: BoxDecoration(
            color : Colors.red,
            borderRadius: BorderRadius.circular(size.height * 0.07),
             boxShadow :const [
              
             BoxShadow(
                spreadRadius: 0.1,
                blurRadius: 2,
                
              )
             ],
          ),
          child: GestureDetector(
            onTap: (){

            },
            child: Center(
              child: Text(text!,
                  style : GoogleFonts.montserrat(
                    fontSize: 20,
                    color : Colors.white,
                    fontWeight: FontWeight.bold
                  )
              ),)),
        ),
      ),
      
    );

}