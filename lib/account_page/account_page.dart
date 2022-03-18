import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umpteen_day1/refer_and_earn/refer_and_earn.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    Color? color = Colors.green.shade700;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: color,
            title: Text("Sanjay Mart",
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                )),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 20),
                  child: Center(
                    child: Text(
                      'My Account',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
                userContainer(context, "Kishore M", "6379659221"),
                Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text(
                            'My Orders',
                            style: GoogleFonts.montserrat(
                                color: Colors.black, fontSize: 18),
                          ),
                          leading: const Icon(
                            Icons.replay_circle_filled,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text(
                            'My Payments',
                            style: GoogleFonts.montserrat(
                                color: Colors.black, fontSize: 18),
                          ),
                          leading: const Icon(
                            Icons.payment,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text(
                            'My Address',
                            style: GoogleFonts.montserrat(
                                color: Colors.black, fontSize: 18),
                          ),
                          leading: const Icon(
                            Icons.location_on,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text(
                            'Notifications',
                            style: GoogleFonts.montserrat(
                                color: Colors.black, fontSize: 18),
                          ),
                          leading: const Icon(
                            Icons.notification_add,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text(
                            'Customer Service',
                            style: GoogleFonts.montserrat(
                                color: Colors.black, fontSize: 18),
                          ),
                          leading: const Icon(
                            Icons.headset_mic,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ReferAndEarn()));
                        },
                        child: ListTile(
                          title: Text(
                            'Refer and Earn',
                            style: GoogleFonts.montserrat(
                                color: Colors.black, fontSize: 18),
                          ),
                          leading: const Icon(
                            Icons.replay_circle_filled,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

Widget userContainer(BuildContext context, String? name, String? phone) {
  Color? color = const Color(0xFFFFcba4);
  Size? size = MediaQuery.of(context).size;
  return Container(
    color: color,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: size.width * 0.22,
            width: size.width * 0.22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(size.width * 0.11),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/deals3.jpg"),
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width * 0.5,
                    child: Text(
                      name!,
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Card(
                        color: Colors.green.shade700,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: FaIcon(
                            FontAwesomeIcons.pen,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
              child: Center(
                child: Text(
                  phone!,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
