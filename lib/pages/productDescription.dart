import 'package:flutter/material.dart';
import 'package:intern_ecommercec/model/product.dart';
import 'package:intern_ecommercec/widgets/recommendedScroller.dart';

class ProductDescription extends StatefulWidget {
  final Product product;
  ProductDescription({this.product});
  @override
  _ProductDescriptionState createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  // List<Product> products = [
  //   Product(
  //       sku: "v001",
  //       name: "Old skool",
  //       price: "3200",
  //       brand: "Vans",
  //       image:
  //           "https://publish.one37pm.net/wp-content/uploads/2020/07/bestvanssneakers-mobile.jpg"),
  //   Product(
  //       sku: "v002",
  //       name: "Old skool",
  //       price: "3200",
  //       brand: "Vans",
  //       image:
  //           "https://media1.popsugar-assets.com/files/thumbor/Q6xUprAgSbE0nL8KLLsJq4G-ZcE/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2020/05/29/699/n/1922564/6d51cd94930f7634_netimgGSUnNM/i/Vans-Dark-Aura-Old-Skool.jpg"),
  //   Product(
  //       sku: "v003",
  //       name: "Old skool",
  //       price: "3200",
  //       brand: "Vans",
  //       image:
  //           "https://media1.popsugar-assets.com/files/thumbor/sTCc0QcKdRsYoqdWTmPS1vLYBx0/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2020/05/29/772/n/1922564/226dc60f5ed14734d01346.39533468_/i/best-vans-for-summer.png"),
  //   Product(
  //       sku: "v004",
  //       name: "Old skool",
  //       price: "3200",
  //       brand: "Vans",
  //       image:
  //           "https://i.pinimg.com/474x/18/71/7d/18717dea02c398b03dd80ff9d9d71401.jpg"),
  //   Product(
  //       sku: "v005",
  //       name: "Old skool",
  //       price: "3200",
  //       brand: "Vans",
  //       image:
  //           "https://i.pinimg.com/originals/6a/a1/0c/6aa10c79e0624ee8da23d31979785eb6.jpg"),
  //   Product(
  //       sku: "v006",
  //       name: "Old skool",
  //       price: "3200",
  //       brand: "Vans",
  //       image:
  //           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj4tof8mbDjlsL0S22_eWXDMUBjaxeijjAOfb99dWAHyKYMfar8pbfeIXpsYaFlP5hNqQ&usqp=CAU"),
  //   Product(
  //       sku: "v007",
  //       name: "Old skool",
  //       price: "3200",
  //       brand: "Vans",
  //       image:
  //           "https://cdn.shopify.com/s/files/1/1150/5624/products/GeneralAdmission_3172020_02_620x.jpg?v=1585773351"),
  //   Product(
  //       sku: "v008",
  //       name: "Old skool",
  //       price: "3200",
  //       brand: "Vans",
  //       image:
  //           "https://publish.one37pm.net/wp-content/uploads/2020/07/screen-shot-2020-07-06-at-10-29-52-am.png?fit=750%2C450"),
  //   Product(
  //       sku: "v009",
  //       name: "Old skool",
  //       price: "3200",
  //       brand: "Vans",
  //       image:
  //           "https://mixmag.asia/assets/uploads/images/_facebook/SCR-VANS.jpg"),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: Image.network(
              widget.product.image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 230,
            left: 40,
            right: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: MediaQuery.of(context).size.width * .70,
                height: 200,
                color: Colors.white54,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        widget.product.name,
                        style: TextStyle(
                          fontFamily: "Monospace",
                        ),
                      ),
                      subtitle: Text(widget.product.brand),
                      trailing: Text(widget.product.price),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(widget.product.description),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    IconButton(
                        icon: Icon(Icons.shopping_cart), onPressed: null),
                  ],
                ),
              ),
            ),
          ),
          Positioned(top: 480, child: RecommendedScroller()),
        ],
      ),
    );
  }
}
