import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'google_login_package/google_signin.dart';
import 'navbar_widget/navbar_page.dart';
import 'otp_page/otp_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sanjay Mart',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyAppFlutter(),
    );
  }
}

class MyAppFlutter extends StatefulWidget {
  const MyAppFlutter({Key? key}) : super(key: key);

  @override
  _MyAppFlutterState createState() => _MyAppFlutterState();
}

class _MyAppFlutterState extends State<MyAppFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            final provider =
                Provider.of<GoogleSignInProvider>(context, listen: false);
            if (provider.isSigningIn) {
              return buildLoading();
            } else if (snapshot.hasData) {
              return NavbarWidget();
            } else {
              return GoogleSignInButtonPage();
            }
          },
        ),
      ),
    );
  }

  Widget buildLoading() => Stack(
        fit: StackFit.expand,
        children: [
          Center(child: CircularProgressIndicator()),
        ],
      );
}

class GoogleSignInButtonPage extends StatefulWidget {
  const GoogleSignInButtonPage({Key? key}) : super(key: key);

  @override
  State<GoogleSignInButtonPage> createState() => _GoogleSignInButtonPageState();
}

class _GoogleSignInButtonPageState extends State<GoogleSignInButtonPage> {
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
                    color: Colors.green,
                    height: size.height * 0.48,
                    width: size.width,
                  ),
                  Container(
                    color: Colors.white,
                    height: size.height * 0.48,
                    width: size.width,
                  ),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.1),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Text(
                        'Login / Sign-Up',
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            TextFieldController(
                              child: TextField(
                                onChanged: (value) {},
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        decimal: true),
                                decoration: const InputDecoration(
                                  icon: Icon(
                                    Icons.phone,
                                    color: Colors.grey,
                                  ),
                                  hintText: "Phone Number",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const OtpPage()));
                              },
                              child: Container(
                                width: size.width * 0.7,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text('Continue',
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white)),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            Text(
                              'Or',
                              style: GoogleFonts.montserrat(
                                  color: Colors.black, fontSize: 20),
                            ),
                            const SizedBox(height: 30),
                            Container(
                              width: size.width * 0.7,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade500,
                                  borderRadius: BorderRadius.circular(10)),
                              child: GestureDetector(
                                onTap: () {
                                  final provider =
                                      Provider.of<GoogleSignInProvider>(context,
                                          listen: false);
                                  provider.login();
                                },
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const FaIcon(FontAwesomeIcons.google),
                                      Text('Sign In With Google',
                                          style: GoogleFonts.montserrat(
                                              color: Colors.red)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
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
