import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({ Key? key }) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
   String? otp;
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child : Scaffold(
        body: Container(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text('Verification',
                   style: GoogleFonts.montserrat(
                          fontSize : 34,
                          fontWeight : FontWeight.bold
                   ),
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text('We have sent an OTP to your registered mobile number !!!',
                   textAlign: TextAlign.center,
                   style: GoogleFonts.montserrat(
                          fontSize : 18,
                          
                   ),
                  ),
                ),
              ),
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Text("+91 63796 59221", 
                       style : GoogleFonts.montserrat(
                         fontSize : 18,
                         fontWeight : FontWeight.bold,
                       ),
                     ),
                   ),
                  
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: GestureDetector(
                       onTap: (){},
                       child: FaIcon(FontAwesomeIcons.edit,color : Colors.green.shade700, size : 18),
                     ),
                   ) 
                 ],
              ),
            SizedBox(height : size.height * 0.1),

            OTPTextField(
                    length: 6,
                    width: size.width *0.8,
                    fieldWidth:size.width* 0.1,
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                    ),
                    onChanged: (value){
                             otp = value;
                    },
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.underline,
                    onCompleted: (pin){
                           print(pin);
                    }

            ),
             SizedBox(height : size.height * 0.1),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't receive the code ? ",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      },
                    child: Text('Resend Again',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ],
            ),
           
            ],
          ),
        )
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
      child: Container(
        margin:const EdgeInsets.symmetric(vertical: 10),
        padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: size.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow :const [
           BoxShadow(
              spreadRadius: 0.1,
              blurRadius: 2
            )
          ]
        ),
        child: child,
      ),
    );
  }
}
