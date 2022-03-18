import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DealsForYouCarousel extends StatelessWidget {
  const DealsForYouCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imgList.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Image.asset(imgList[itemIndex]),
      options: CarouselOptions(),
    );
  }
}

var imgList = ["assets/deals1.jpg", "assets/deals2.jpg", "assets/deals3.jpg"];
