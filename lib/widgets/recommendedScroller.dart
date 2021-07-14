import 'package:flutter/material.dart';
import 'package:intern_ecommercec/widgets/card.dart';

class RecommendedScroller extends StatefulWidget {
  @override
  _RecommendedScrollerState createState() => _RecommendedScrollerState();
}

class _RecommendedScrollerState extends State<RecommendedScroller> {
  var vdivide;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CardItem(
            image:
                "https://images.pexels.com/photos/593163/pexels-photo-593163.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
            myitemname: "Vans old skool ",
            myitemprice: "Rs. 2700",
          ),
          vdivide = VerticalDivider(
            width: 16,
          ),
          CardItem(
            image:
                "https://images.pexels.com/photos/3636684/pexels-photo-3636684.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            myitemname: "Vans Old skool",
            myitemprice: "Rs. 2600",
          ),
          vdivide,
          CardItem(
            image:
                "https://images.pexels.com/photos/3214308/pexels-photo-3214308.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
            myitemname: "Vans X Puma",
            myitemprice: "Rs. 3000",
          ),
          vdivide,
          CardItem(
            image:
                "https://images.pexels.com/photos/3214308/pexels-photo-3214308.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
            myitemname: "Vans Checkered Slip-ons",
            myitemprice: "Rs. 2200",
          ),
        ],
      ),
    );
  }
}
