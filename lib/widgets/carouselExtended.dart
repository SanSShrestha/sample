import 'package:carousel_extended/carousel_extended.dart';
import 'package:flutter/material.dart';

class CarouselExtended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width * .99,
      child: Carousel(
        dotSize: 4.0,
        dotColor: Colors.white10,
        borderRadius: false,
        pageController: PageController(),
        images: [
          NetworkImage(
              "https://images.pexels.com/photos/1280064/pexels-photo-1280064.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
          NetworkImage(
              "https://images.pexels.com/photos/2157455/pexels-photo-2157455.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          NetworkImage(
              "https://images.pexels.com/photos/3695576/pexels-photo-3695576.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          NetworkImage(
              "https://images.pexels.com/photos/2040090/pexels-photo-2040090.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
        ],
      ),
    );
  }
}
