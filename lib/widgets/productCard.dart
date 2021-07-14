import 'dart:ui';

import 'package:flutter/material.dart';

class ProductCardItem extends StatefulWidget {
  final String image, myitemname, myitemprice;
  ProductCardItem({this.image, this.myitemname, this.myitemprice});
  @override
  _ProductCardItemState createState() => _ProductCardItemState();
}

class _ProductCardItemState extends State<ProductCardItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          child: Container(
            color: Colors.white,
            width: 190,
            height: 200,
          ),
        ),
        Positioned(
            top: 76,
            left: 4,
            child: Container(
              color: Color.fromRGBO(230, 211, 245, .50),
              width: 190,
              height: 110,
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  ListTile(
                      title: Text(
                        widget.myitemname,
                        style: TextStyle(fontSize: 12),
                      ),
                      subtitle: Text(widget.myitemprice)),
                ],
              ),
            )),
        Positioned(
          top: 5,
          left: 100,
          right: 10,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(100, 200),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)),
            child: Container(
              color: Colors.red,
              width: 10,
              height: 170,
              child: Image.network(
                widget.image,
                // "https://images.pexels.com/photos/3596282/pexels-photo-3596282.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        // Positioned(
        //   top: 100,
        //   left: 20,
        //   child: ListTile(
        //     leading: IconButton(icon: Icon(Icons.read_more), onPressed: () {}),
        //   ),
        //   // child: Row(
        //   //   children: [
        //   //     IconButton(
        //   //         icon: Icon(Icons.remove_red_eye_outlined), onPressed: () {})
        //   //   ],
        //   // )
        // )
      ],
    );
  }
}
