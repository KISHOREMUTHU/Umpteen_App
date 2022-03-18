import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umpteen_day1/product_data/product%20details.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductData extends StatefulWidget {
  const ProductData({Key? key}) : super(key: key);

  @override
  _ProductDataState createState() => _ProductDataState();
}

class _ProductDataState extends State<ProductData> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: productList.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return SingleProduct(
              image: productList[index]['image'],
              name: productList[index]['name'],
              category: productList[index]['category'],
              price: productList[index]['price'],
              actualPrice: productList[index]['actualPrice'],
              company: productList[index]['company'],
              quantity: productList[index]['quantity']);
        });
  }
}

var productList = [
  {
    "name": "Eggs",
    "category": "Non - Veg",
    "price": "100",
    "image": "assets/launch_image.png",
    "company": "Prasuma",
    "quantity": "2 x 24 pcs",
    "actualPrice": "590",
  },
  {
    "name": "Eggs",
    "category": "Non - Veg",
    "price": "100",
    "image": "assets/launch_image.png",
    "company": "Prasuma",
    "quantity": "2 x 24 pcs",
    "actualPrice": "590",
  },
  {
    "name": "Eggs",
    "category": "Non - Veg",
    "price": "100",
    "image": "assets/launch_image.png",
    "company": "Prasuma",
    "quantity": "2 x 24 pcs",
    "actualPrice": "590",
  },
  {
    "name": "Eggs",
    "category": "Non - Veg",
    "price": "100",
    "image": "assets/launch_image.png",
    "company": "Prasuma",
    "quantity": "2 x 24 pcs",
    "actualPrice": "590",
  },
  {
    "name": "Eggs",
    "category": "Non - Veg",
    "price": "100",
    "image": "assets/launch_image.png",
    "company": "Prasuma",
    "quantity": "2 x 24 pcs",
    "actualPrice": "590",
  },
  {
    "name": "Eggs",
    "category": "Non - Veg",
    "price": "100",
    "image": "assets/launch_image.png",
    "company": "Prasuma",
    "quantity": "2 x 24 pcs",
    "actualPrice": "590",
  },
  {
    "name": "Eggs",
    "category": "Non - Veg",
    "price": "100",
    "image": "assets/launch_image.png",
    "company": "Prasuma",
    "quantity": "2 x 24 pcs",
    "actualPrice": "590",
  },
  {
    "name": "Eggs",
    "category": "Non - Veg",
    "price": "100",
    "image": "assets/launch_image.png",
    "company": "Prasuma",
    "quantity": "2 x 24 pcs",
    "actualPrice": "590",
  },
  {
    "name": "Eggs",
    "category": "Non - Veg",
    "price": "100",
    "image": "assets/launch_image.png",
    "company": "Prasuma",
    "quantity": "2 x 24 pcs",
    "actualPrice": "590",
  },
  {
    "name": "Eggs",
    "category": "Non - Veg",
    "price": "100",
    "image": "assets/launch_image.png",
    "company": "Prasuma",
    "quantity": "2 x 24 pcs",
    "actualPrice": "590",
  },
  {
    "name": "Eggs",
    "category": "Non - Veg",
    "price": "100",
    "image": "assets/launch_image.png",
    "company": "Prasuma",
    "quantity": "2 x 24 pcs",
    "actualPrice": "590",
  },
  {
    "name": "Eggs",
    "category": "Non - Veg",
    "price": "100",
    "image": "assets/launch_image.png",
    "company": "Prasuma",
    "quantity": "2 x 24 pcs",
    "actualPrice": "590",
  },
  {
    "name": "Eggs",
    "category": "Non - Veg",
    "price": "100",
    "image": "assets/launch_image.png",
    "company": "Prasuma",
    "quantity": "2 x 24 pcs",
    "actualPrice": "590",
  },
  {
    "name": "Eggs",
    "category": "Non - Veg",
    "price": "100",
    "image": "assets/launch_image.png",
    "company": "Prasuma",
    "quantity": "2 x 24 pcs",
    "actualPrice": "590",
  },
  {
    "name": "Eggs",
    "category": "Non - Veg",
    "price": "100",
    "image": "assets/launch_image.png",
    "company": "Prasuma",
    "quantity": "2 x 24 pcs",
    "actualPrice": "590",
  },
  {
    "name": "Eggs",
    "category": "Non - Veg",
    "price": "100",
    "image": "assets/launch_image.png",
    "company": "Prasuma",
    "quantity": "2 x 24 pcs",
    "actualPrice": "590",
  },
];

class Product {
  String? name;
  String? category;
  String? imageUrl;
  String? price;
  String? company;
  String? quantity;
  String? actualPrice;

  Product(
      {this.name,
      this.category,
      this.imageUrl,
      this.price,
      this.actualPrice,
      this.company,
      this.quantity});
}

class SingleProduct extends StatelessWidget {
  final String? name;

  final String? category;

  final String? image;

  final String? price;
  final String? actualPrice;
  final String? company;
  final String? quantity;

  const SingleProduct({
    Key? key,
    this.price,
    this.company,
    this.quantity,
    this.actualPrice,
    this.name,
    this.category,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size? size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Card(
        elevation: 10,
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
                          quantity: quantity,
                          actualPrice: actualPrice,
                          company: company,
                        )));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  image!,
                  height: size.width * 0.3,
                  width: size.width * 0.3,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: size.width * 0.63,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        company!,
                        style: GoogleFonts.exo(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6.0, vertical: 3),
                      child: Text(
                        name!,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.exo(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
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
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, left: 10),
                          child: Text(
                            '150 + reviews',
                            style: GoogleFonts.exo(
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Rs. " + price!,
                            style: GoogleFonts.exo(
                                color: Colors.green,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Rs. " + actualPrice!,
                            style: GoogleFonts.exo(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Card(
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: VxStepper(
                              onChange: (value) {
                                print(value);
                              },
                              defaultValue: 1,
                              min: 1,
                              max: 20,
                              inputTextColor: Colors.red,
                              inputBoxColor: Colors.white,
                              actionIconColor: Colors.white,
                              actionButtonColor: Colors.red,
                            ),
                          ),
                        )
                      ],
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
