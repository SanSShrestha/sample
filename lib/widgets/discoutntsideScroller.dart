import 'package:flutter/material.dart';
import 'package:intern_ecommercec/widgets/card.dart';

class SideScroller extends StatefulWidget {
  @override
  _SideScrollerState createState() => _SideScrollerState();
}

class _SideScrollerState extends State<SideScroller> {
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
                "https://images.pexels.com/photos/3596282/pexels-photo-3596282.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
            myitemname: "Chuck Taylor ",
            myitemprice: "Rs. 3400",
          ),
          vdivide = VerticalDivider(
            width: 16,
          ),
          CardItem(
            image:
                "https://images.pexels.com/photos/1261005/pexels-photo-1261005.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            myitemname: "Chuck Taylor ",
            myitemprice: "Rs. 3400",
          ),
          vdivide,
          CardItem(
            image:
                "https://images.pexels.com/photos/3488036/pexels-photo-3488036.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
            myitemname: "Chuck Taylor ",
            myitemprice: "Rs. 3400",
          ),
          vdivide,
          CardItem(
            image:
                "https://images.pexels.com/photos/1449844/pexels-photo-1449844.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
            myitemname: "Chuck Taylor ",
            myitemprice: "Rs. 3400",
          ),
          vdivide,
          CardItem(
            image:
                "https://images.pexels.com/photos/2421374/pexels-photo-2421374.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
            myitemname: "Chuck Taylor ",
            myitemprice: "Rs. 3400",
          ),
        ],
      ),
    );
  }
}
