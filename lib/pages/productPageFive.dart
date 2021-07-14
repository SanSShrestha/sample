import 'package:flutter/material.dart';
import 'package:intern_ecommercec/model/product.dart';
import 'package:intern_ecommercec/pages/productDescription.dart';
import 'package:intern_ecommercec/widgets/card.dart';
import 'package:intern_ecommercec/widgets/drawer.dart';
import 'package:intern_ecommercec/widgets/productCard.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPageFive extends StatefulWidget {
  @override
  _ProductPageFiveState createState() => _ProductPageFiveState();
}

class _ProductPageFiveState extends State<ProductPageFive> {
  List<Product> products = [
    Product(
        sku: "v001",
        name: "Old skool",
        price: "3200",
        brand: "Vans",
        image:
            "https://publish.one37pm.net/wp-content/uploads/2020/07/bestvanssneakers-mobile.jpg"),
    Product(
        sku: "v002",
        name: "Old skool",
        price: "3200",
        brand: "Vans",
        image:
            "https://media1.popsugar-assets.com/files/thumbor/Q6xUprAgSbE0nL8KLLsJq4G-ZcE/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2020/05/29/699/n/1922564/6d51cd94930f7634_netimgGSUnNM/i/Vans-Dark-Aura-Old-Skool.jpg"),
    Product(
        sku: "v003",
        name: "Old skool",
        price: "3200",
        brand: "Vans",
        image:
            "https://media1.popsugar-assets.com/files/thumbor/sTCc0QcKdRsYoqdWTmPS1vLYBx0/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2020/05/29/772/n/1922564/226dc60f5ed14734d01346.39533468_/i/best-vans-for-summer.png"),
    Product(
        sku: "v004",
        name: "Old skool",
        price: "3200",
        brand: "Vans",
        image:
            "https://i.pinimg.com/474x/18/71/7d/18717dea02c398b03dd80ff9d9d71401.jpg"),
    Product(
        sku: "v005",
        name: "Old skool",
        price: "3200",
        brand: "Vans",
        image:
            "https://i.pinimg.com/originals/6a/a1/0c/6aa10c79e0624ee8da23d31979785eb6.jpg"),
    Product(
        sku: "v006",
        name: "Old skool",
        price: "3200",
        brand: "Vans",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj4tof8mbDjlsL0S22_eWXDMUBjaxeijjAOfb99dWAHyKYMfar8pbfeIXpsYaFlP5hNqQ&usqp=CAU"),
    Product(
        sku: "v007",
        name: "Old skool",
        price: "3200",
        brand: "Vans",
        image:
            "https://cdn.shopify.com/s/files/1/1150/5624/products/GeneralAdmission_3172020_02_620x.jpg?v=1585773351"),
    Product(
        sku: "v008",
        name: "Old skool",
        price: "3200",
        brand: "Vans",
        image:
            "https://publish.one37pm.net/wp-content/uploads/2020/07/screen-shot-2020-07-06-at-10-29-52-am.png?fit=750%2C450"),
    Product(
        sku: "v009",
        name: "Old skool",
        price: "3200",
        brand: "Vans",
        image:
            "https://mixmag.asia/assets/uploads/images/_facebook/SCR-VANS.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
            // GridView.count(
            //   crossAxisCount: 2,
            //   // shrinkWrap: true,
            //   // physics: NeverScrollableScrollPhysics(),
            //   children: [
            Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 30,
              child: ListTile(
                trailing: Image.network(
                    "https://calibershoes.com/wp-content/uploads/2021/02/caliber-200px.png"),
                title: Text("Caliber",
                    style: GoogleFonts.pangolin(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    )),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                      // shadowColor: Color.fromRGBO(230, 211, 245, .50),

                      color: Theme.of(context).primaryColor,
                      // color: Color.fromRGBO(230, 211, 245, .50),

                      // color: Color.fromRGBO(210, 224, 247, 1),
                      child: InkWell(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDescription(
                                          product: products[index],
                                        )));
                          },
                          child: ProductCardItem(
                            image: (products[index].image),
                            myitemname: (products[index].name),
                            myitemprice: (products[index].price),

                            // ListTile(
                            //   leading: Image.network(products[index].image),
                            //   title: Text(products[index].name),
                            //   subtitle: Text(products[index].price),
                            // )
                            //     GridView.count(
                            //   crossAxisCount: 3,
                            //   shrinkWrap: true,
                            //   physics: NeverScrollableScrollPhysics(),
                            //   children: [
                            //     CardItem(
                            //       image: (products[index].image),
                            //       myitemname: products[index].name,
                            //       myitemprice: (products[index].price),
                            //     ),
                            //   ],
                            // )
                          ),
                        ),
                      )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
