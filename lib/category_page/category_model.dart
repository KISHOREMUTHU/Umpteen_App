import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umpteen_day1/search_page/shop_by_category.dart';

class CategoryModel extends StatefulWidget {
  final String? asset;
  final String? category;
  final List<String?>? listVar;

  const CategoryModel({Key? key, this.asset, this.category, this.listVar})
      : super(key: key);

  @override
  State<CategoryModel> createState() => _CategoryModelState();
}

class _CategoryModelState extends State<CategoryModel> {
  @override
  bool? controller = false;
  Widget build(BuildContext context) {
    Size? size = MediaQuery.of(context).size;
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              controller = !controller!;
            });
          },
          child: Card(
            elevation: 5,
            child: Column(
              children: [
                SizedBox(
                  width: size.width * 0.96,
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: size.width * 0.19,
                              child: Image.asset(widget.asset!)),
                          SizedBox(
                            width: size.width * 0.76,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  widget.category!,
                                  style: GoogleFonts.montserrat(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Icon(
                                      Icons.arrow_drop_down_circle_outlined),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        controller == true
            ? ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.listVar?.length,
                itemBuilder: (context, index) {
                  return DropCard(
                    title: widget.listVar?[index],
                  );
                })
            : SizedBox(),
      ],
    );
  }
}

class DropCard extends StatefulWidget {
  final String? title;

  const DropCard({Key? key, this.title}) : super(key: key);

  @override
  _DropCardState createState() => _DropCardState();
}

class _DropCardState extends State<DropCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ShopByCategory()));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              widget.title!,
              style: GoogleFonts.montserrat(fontSize: 15),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Divider(
              color: Colors.black,
              thickness: 0.3,
            ),
          ),
        ],
      ),
    );
  }
}
