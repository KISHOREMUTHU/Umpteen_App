// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../cart_page/cart_page.dart';
import 'product_data.dart';

class ProductDetails extends StatefulWidget {
  final String? price;
  final String? name;
  final String? category;

  final String? image;

  const ProductDetails({
    Key? key,
    this.price,
    this.name,
    this.category,
    this.image,
  }) : super(key: key);
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<CartProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          widget.name!,
          style: GoogleFonts.montserrat(color: Colors.white),
        ),
        backgroundColor: Colors.green.shade700,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 300,
            child: GridTile(
              child: Container(
                  color: Colors.white,
                  child: Image.asset(
                    widget.image!,
                    fit: BoxFit.fill,
                  )),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.name!,
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  title: Row(
                    children: [
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Rs. " + widget.price! + " /-",
                          style: TextStyle(
                              color: Colors.green.shade700,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    height: 60,
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                              child: Text(
                            'Buy Now',
                            style: GoogleFonts.montserrat(
                              fontSize: 19,
                            ),
                          )),
                        ),
                      ],
                    ),
                    color: Colors.green.shade700,
                    textColor: Colors.white,
                    elevation: 1.0,
                    onPressed: () {},
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Product Name',
                          style: GoogleFonts.montserrat(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.green.shade700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.name!,
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Cost                       ',
                          style: GoogleFonts.montserrat(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.green.shade700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Rs. " + widget.price! + " /-",
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Product> cartDetails = [];

class CartProductDetails extends StatefulWidget {
  final String? price;
  final String? name;
  final String? category;

  final String? image;
  final String? actualPrice;
  final String? company;
  final String? quantity;

  const CartProductDetails({
    Key? key,
    this.price,
    this.actualPrice,
    this.quantity,
    this.company,
    this.name,
    this.category,
    this.image,
  }) : super(key: key);
  @override
  _CartProductDetailsState createState() => _CartProductDetailsState();
}

class _CartProductDetailsState extends State<CartProductDetails> {
  @override
  Widget build(BuildContext context) {
    Size? size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        actions: [
          IconButton(
              icon: const Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage()));
              }),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                    width: 0.3,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'See More BB Products',
                  style: GoogleFonts.exo(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              widget.name!,
              style: GoogleFonts.exo(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Rs. " + widget.price!,
                  style: GoogleFonts.exo(
                      color: Colors.green,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Rs. " + widget.actualPrice!,
                  style: GoogleFonts.exo(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '(Inclusive of All Taxes)',
              style: GoogleFonts.exo(fontSize: 10, color: Colors.black),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Chip(
                backgroundColor: Colors.green.shade700,
                label: Text(
                  '4.5',
                  style: GoogleFonts.exo(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 10),
                child: Text(
                  '150 + reviews',
                  style: GoogleFonts.exo(
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                widget.image!,
                fit: BoxFit.cover,
                height: size.width * 0.7,
                width: size.width * 0.7,
              ),
            ),
          ),
          MaterialButton(
            height: 60,
            child: Row(
              children: [
                Expanded(
                  child: Center(
                      child: Text(
                    'Add To Cart',
                    style: GoogleFonts.montserrat(
                      fontSize: 19,
                    ),
                  )),
                ),
              ],
            ),
            color: Colors.red,
            textColor: Colors.white,
            elevation: 1.0,
            onPressed: () {
              setState(() {
                cartDetails.add(Product(
                    name: widget.name,
                    category: widget.category,
                    imageUrl: widget.image,
                    price: widget.price,
                    quantity: widget.quantity,
                    company: widget.company,
                    actualPrice: widget.actualPrice));
                print(cartDetails.length);
              });
            },
          ),
        ],
      ),
    );
  }
}
