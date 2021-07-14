import 'package:flutter/material.dart';
import 'package:intern_ecommercec/pages/productPageFive.dart';
import 'package:intern_ecommercec/pages/productPageFour.dart';
import 'package:intern_ecommercec/pages/productPageOne.dart';
import 'package:intern_ecommercec/pages/productPageSix.dart';
import 'package:intern_ecommercec/pages/productPageThree.dart';
import 'package:intern_ecommercec/pages/productPageTwo.dart';
import 'package:intern_ecommercec/widgets/drawer.dart';

class ProductTabController extends StatefulWidget {
  @override
  _ProductTabControllerState createState() => _ProductTabControllerState();
}

class _ProductTabControllerState extends State<ProductTabController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          bottom: TabBar(
              isScrollable: false,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [
                Tab(
                  child: Container(
                    child: Image.network(
                        "https://image.flaticon.com/icons/png/512/919/919275.png"),
                  ),
                ),
                Tab(
                  child: Image.network(
                      "https://image.flaticon.com/icons/png/512/919/919275.png"),
                ),
                Tab(
                  child: Image.network(
                      "https://image.flaticon.com/icons/png/512/919/919275.png"),
                ),
                Tab(
                  child: Image.network(
                      "https://image.flaticon.com/icons/png/512/919/919275.png"),
                ),
                Tab(
                  child: Image.network(
                      "https://image.flaticon.com/icons/png/512/919/919275.png"),
                ),
                Tab(
                  child: Image.network(
                      "https://image.flaticon.com/icons/png/512/919/919275.png"),
                ),
              ]),
        ),
        body: TabBarView(children: [
          Productpage(),
          ProductpageTwo(),
          ProductPageThree(),
          ProductPageFour(),
          ProductPageFive(),
          ProductPageSix()
        ]),
      ),
    );
  }
}
