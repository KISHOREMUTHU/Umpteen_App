import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'account_page/account_page.dart';
import 'admin_dashboard/admin_navbar.dart';
import 'navbar_widget/navbar_page.dart';
import 'otp_page/otp_page.dart';
import 'user_details/user_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BB Application',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        
      ),
      home:const NavbarWidget(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                   Column(
                 children: [
                       Container(
                         color : Colors.green,
                         height: size.height * 0.48,
                        width: size.width ,
                       ),
                       Container(
                         color : Colors.white,
                         height: size.height * 0.48,
                        width: size.width ,
                       ),
                       
               ],),
                    Center(
                  child : Column(
                    children: [
                      SizedBox(height : size.height * 0.1),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical : 30.0),
                        child: Text('Login / Sign-Up',
                          style : GoogleFonts.montserrat(
                                  fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          alignment: Alignment.center,
                          
                           decoration : BoxDecoration(
                                       color : Colors.grey.shade200,
                                       borderRadius: BorderRadius.circular(15)
                           ),
                           height: size.height * 0.4,
                           child: Column(
                             children: [
                                 TextFieldController(
                child: TextField(
                  onChanged: (value) {},
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration:const InputDecoration(
                  icon: Icon(
                    Icons.phone,
                    color: Colors.grey,
                  ),
                  hintText: "Phone Number",
                 
                  border: InputBorder.none,
                  ),
                ),
              ),
                                  SizedBox(height : 30),
                                  Container(
                                    width: size.width * 0.7,
                                    height : 50,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10)
                                     ),
                                    child: GestureDetector(
                                      onTap: (){
          
                                      },
                                      child : Center(
                                        child: Text('Continue',
                                         style : GoogleFonts.montserrat(
                                           color : Colors.white
                                         )
                                        ),
                                        ),
                                    ),
                                  ),
                                  SizedBox(height : 30),
                                  Text('Or',
                                    style : GoogleFonts.montserrat(
                                      color : Colors.black,
                                      fontSize : 20
                                    ),
                                    
                                  ),
                                   SizedBox(height : 30),
                                   Container(
                                    width: size.width * 0.7,
                                    height : 50,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade500,
                                      borderRadius: BorderRadius.circular(10)
                                     ),
                                    child: GestureDetector(
                                      onTap: (){
          
                                      },
                                      
                                      child : Center(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            FaIcon(FontAwesomeIcons.google),
                                            Text('Sign In With Google',
                                             style : GoogleFonts.montserrat(
                                               color : Colors.red
                                             )
                                            ),
                                          ],
                                        ),
                                        ),
                                    ),
                                  ),
                             ],
                           ),
                          ),
                      ),
                    ],
                  ),
                ),
              
              ],
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
      child: Container(
        margin:const EdgeInsets.symmetric(vertical: 10),
        padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(29),
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
