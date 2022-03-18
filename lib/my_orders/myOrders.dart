import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'single_order_card.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  Color? color = Colors.green.shade700;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: color,
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text(
            'My Orders',
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
            itemCount: orderList.length,
            itemBuilder: (context, index) {
              return SingleOrderCard(
                product: orderList[index]['product'],
                total: orderList[index]['total'],
                paid: orderList[index]['paid'],
                quantity: orderList[index]['quantity'],
              );
            }),
      ),
    );
  }
}

var orderList = [
  {
    "product": "Tomato",
    "quantity": "2 kg",
    "total": "Rs. 44/-",
    "paid": "Google/Upi"
  },
  {
    "product": "Tomato",
    "quantity": "2 kg",
    "total": "Rs. 44/-",
    "paid": "Google/Upi"
  },
  {
    "product": "Tomato",
    "quantity": "2 kg",
    "total": "Rs. 44/-",
    "paid": "Google/Upi"
  },
  {
    "product": "Tomato",
    "quantity": "2 kg",
    "total": "Rs. 44/-",
    "paid": "Google/Upi"
  },
  {
    "product": "Tomato",
    "quantity": "2 kg",
    "total": "Rs. 44/-",
    "paid": "Google/Upi"
  },
];
