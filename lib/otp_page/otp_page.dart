import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:umpteen_day1/user_details/user_details.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    String? otp;
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  'Verification',
                  style: GoogleFonts.montserrat(
                      fontSize: 34, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  'We have sent an OTP to your registered mobile number !!!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
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
                  child: Text(
                    "+91 63796 59221",
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: FaIcon(FontAwesomeIcons.edit,
                        color: Colors.green.shade700, size: 18),
                  ),
                )
              ],
            ),
            SizedBox(height: size.height * 0.1),
            OTPTextField(
                length: 6,
                width: size.width * 0.8,
                fieldWidth: size.width * 0.1,
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                ),
                onChanged: (value) {
                  otp = value;
                },
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
                onCompleted: (pin) {
                  print(pin);
                }),
            SizedBox(height: size.height * 0.05),
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
                TextButton(
                  onPressed: () {},
                  child: Text('Resend Again',
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.05),
            verifyWidget('Verify', context)
          ],
        ),
      )),
    );
  }
}

Widget verifyWidget(String? text, BuildContext context) {
  Size? size = MediaQuery.of(context).size;
  return Center(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const UserDetailsPage()));
        },
        child: Container(
          width: size.width * 0.8,
          height: size.height * 0.07,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(size.height * 0.07),
            boxShadow: const [
              BoxShadow(
                spreadRadius: 0.1,
                blurRadius: 2,
              )
            ],
          ),
          child: Center(
            child: Text(text!,
                style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    ),
  );
}

class TextFieldController extends StatelessWidget {
  final Widget? child;

  const TextFieldController({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: size.width * 0.9,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [BoxShadow(spreadRadius: 0.1, blurRadius: 2)]),
        child: child,
      ),
    );
  }
}
