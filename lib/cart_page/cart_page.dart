import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umpteen_day1/product_data/product%20details.dart';

import '../product_data/product_data.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Color? color = Colors.green.shade700;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: color,
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text(
            'Your Basket',
            style: GoogleFonts.montserrat(color: Colors.white),
          ),
          actions: [
            IconButton(
                icon:
                    const Icon(Icons.person_add_outlined, color: Colors.white),
                onPressed: () {}),
          ],
        ),
        body: cartDetails.isEmpty
            ? const SizedBox()
            : ListView.builder(
                itemCount: cartDetails.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return SingleProduct(
                    image: cartDetails[index].imageUrl ?? "assets/cat1.jpg",
                    name: cartDetails[index].name ?? "",
                    category: cartDetails[index].category ?? "",
                    price: cartDetails[index].price ?? "",
                    quantity: cartDetails[index].quantity ?? "",
                    company: cartDetails[index].company ?? "",
                    actualPrice: cartDetails[index].actualPrice ?? "",
                  );
                }),
      ),
    );
  }
}

class SingleCartProduct extends StatelessWidget {
  final String? name;

  final String? category;

  final String? image;

  final String? price;

  const SingleCartProduct({
    Key? key,
    this.price,
    this.name,
    this.category,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size? size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 3),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(10),
              blurRadius: 1,
            ),
          ],
        ),
        child: Card(
          child: InkWell(
            onTap: () {
              // Passing the values to the product details page
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => CartProductDetails(
                            name: name,
                            price: price,
                            image: image,
                            category: category,
                          )));
            },
            child: GridTile(
              footer: Container(
                color: Colors.white.withAlpha(100),
                child: ListTile(
                  title: Text(
                    name!,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade700,
                      fontSize: 17,
                    ),
                  ),
                  subtitle: Text(
                    "Rs. " + price! + " /-",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              child: Image.asset(
                image!,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
