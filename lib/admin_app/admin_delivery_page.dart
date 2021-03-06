import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umpteen_day1/admin_app/delivery_model.dart';

class AdminDeliveryPanel extends StatefulWidget {
  const AdminDeliveryPanel({Key? key}) : super(key: key);

  @override
  State<AdminDeliveryPanel> createState() => _AdminDeliveryPanelState();
}

class _AdminDeliveryPanelState extends State<AdminDeliveryPanel> {
  @override
  Widget build(BuildContext context) {
    Color? color = Colors.green.shade700;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: color,
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text(
            'Delivery Status',
            style: GoogleFonts.montserrat(color: Colors.white),
          ),
          actions: [
            IconButton(
                icon:
                    const Icon(Icons.person_add_outlined, color: Colors.white),
                onPressed: () {}),
          ],
        ),
        body: ListView.builder(
            itemCount: deliveryList.length,
            itemBuilder: (context, index) {
              return SingleDeliveryCard(
                product: deliveryList[index]['product'],
                status: deliveryList[index]['status'],
                estimated: deliveryList[index]['estimated'],
                quantity: deliveryList[index]['quantity'],
              );
            }),
      ),
    );
  }
}

var deliveryList = [
  {
    "product": "Tomato",
    "quantity": "2 kg",
    "status": "Preprocessing",
    "estimated": "4 hrs"
  },
  {
    "product": "Tomato",
    "quantity": "2 kg",
    "status": "Preprocessing",
    "estimated": "4 hrs"
  },
  {
    "product": "Tomato",
    "quantity": "2 kg",
    "status": "Preprocessing",
    "estimated": "4 hrs"
  },
  {
    "product": "Tomato",
    "quantity": "2 kg",
    "status": "Preprocessing",
    "estimated": "4 hrs"
  },
  {
    "product": "Tomato",
    "quantity": "2 kg",
    "status": "Preprocessing",
    "estimated": "4 hrs"
  },
];
