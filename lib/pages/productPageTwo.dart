// import 'package:flutter/material.dart';
// import 'package:intern_ecommercec/model/product.dart';
// import 'package:intern_ecommercec/widgets/card.dart';
// import 'package:intern_ecommercec/widgets/drawer.dart';
// import 'package:intern_ecommercec/widgets/productCard.dart';
// import 'package:google_fonts/google_fonts.dart';

// class ProductPageTwo extends StatefulWidget {
//   @override
//   _ProductPageTwoState createState() => _ProductPageTwoState();
// }

// class _ProductPageTwoState extends State<ProductPageTwo> {
//   List<Product> products = [
//     Product(
//       sku: "v001",
//       name: "Old skool",
//       price: "3200",
//       brand: "Vans",
//       image:
//           "https://images.pexels.com/photos/3596282/pexels-photo-3596282.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
//     ),
//     Product(
//       sku: "v002",
//       name: "Old skool",
//       price: "3200",
//       brand: "Vans",
//       image:
//           "https://images.pexels.com/photos/1261005/pexels-photo-1261005.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
//     ),
//     Product(
//       sku: "v003",
//       name: "Old skool",
//       price: "3200",
//       brand: "Vans",
//       image:
//           "https://images.pexels.com/photos/3488036/pexels-photo-3488036.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
//     ),
//     Product(
//       sku: "v004",
//       name: "Old skool",
//       price: "3200",
//       brand: "Vans",
//       image:
//           "https://images.pexels.com/photos/1449844/pexels-photo-1449844.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
//     ),
//     Product(
//       sku: "v005",
//       name: "Old skool",
//       price: "3200",
//       brand: "Vans",
//       image:
//           "https://images.pexels.com/photos/2421374/pexels-photo-2421374.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
//     ),
//     Product(
//         sku: "v006",
//         name: "Old skool",
//         price: "3200",
//         brand: "Vans",
//         image:
//             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj4tof8mbDjlsL0S22_eWXDMUBjaxeijjAOfb99dWAHyKYMfar8pbfeIXpsYaFlP5hNqQ&usqp=CAU"),
//     Product(
//         sku: "v007",
//         name: "Old skool",
//         price: "3200",
//         brand: "Vans",
//         image:
//             "https://cdn.shopify.com/s/files/1/1150/5624/products/GeneralAdmission_3172020_02_620x.jpg?v=1585773351"),
//     Product(
//         sku: "v008",
//         name: "Old skool",
//         price: "3200",
//         brand: "Vans",
//         image:
//             "https://publish.one37pm.net/wp-content/uploads/2020/07/screen-shot-2020-07-06-at-10-29-52-am.png?fit=750%2C450"),
//     Product(
//         sku: "v009",
//         name: "Old skool",
//         price: "3200",
//         brand: "Vans",
//         image:
//             "https://mixmag.asia/assets/uploads/images/_facebook/SCR-VANS.jpg"),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child:
//             // GridView.count(
//             //   crossAxisCount: 2,
//             //   // shrinkWrap: true,
//             //   // physics: NeverScrollableScrollPhysics(),
//             //   children: [
//             Column(
//           children: [
//             SizedBox(
//               width: MediaQuery.of(context).size.width,
//               height: 30,
//               child: ListTile(
//                 trailing: Image.network(
//                   "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Converse_logo.svg/180px-Converse_logo.svg.png",
//                 ),
//                 title: Text("Converse",
//                     style: GoogleFonts.pangolin(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w700,
//                       color: Colors.black,
//                     )),
//               ),
//             ),
//             ListView.builder(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: products.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: Card(
//                       // shadowColor: Color.fromRGBO(230, 211, 245, .50),

//                       color: Theme.of(context).primaryColor,
//                       // color: Color.fromRGBO(230, 211, 245, .50),

//                       // color: Color.fromRGBO(210, 224, 247, 1),
//                       child: ProductCardItem(
//                         image: (products[index].image),
//                         myitemname: (products[index].name),
//                         myitemprice: (products[index].price),

//                         // ListTile(
//                         //   leading: Image.network(products[index].image),
//                         //   title: Text(products[index].name),
//                         //   subtitle: Text(products[index].price),
//                         // )
//                         //     GridView.count(
//                         //   crossAxisCount: 3,
//                         //   shrinkWrap: true,
//                         //   physics: NeverScrollableScrollPhysics(),
//                         //   children: [
//                         //     CardItem(
//                         //       image: (products[index].image),
//                         //       myitemname: products[index].name,
//                         //       myitemprice: (products[index].price),
//                         //     ),
//                         //   ],
//                         // )
//                       )),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:intern_ecommercec/model/product.dart';
import 'package:intern_ecommercec/pages/productDescription.dart';
import 'package:intern_ecommercec/widgets/card.dart';
import 'package:intern_ecommercec/widgets/drawer.dart';
import 'package:intern_ecommercec/widgets/productCard.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductpageTwo extends StatefulWidget {
  @override
  _ProductpageTwoState createState() => _ProductpageTwoState();
}

class _ProductpageTwoState extends State<ProductpageTwo> {
  List<Product> products = [
    Product(
      sku: "v001",
      name: "Old skool",
      price: "3200",
      brand: "Vans",
      image:
          "https://images.pexels.com/photos/3596282/pexels-photo-3596282.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
    ),
    Product(
      sku: "v002",
      name: "Old skool",
      price: "3200",
      brand: "Vans",
      image:
          "https://images.pexels.com/photos/1261005/pexels-photo-1261005.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    Product(
      sku: "v003",
      name: "Old skool",
      price: "3200",
      brand: "Vans",
      image:
          "https://images.pexels.com/photos/3488036/pexels-photo-3488036.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    ),
    Product(
      sku: "v004",
      name: "Old skool",
      price: "3200",
      brand: "Vans",
      image:
          "https://images.pexels.com/photos/1449844/pexels-photo-1449844.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    ),
    Product(
      sku: "v005",
      name: "Old skool",
      price: "3200",
      brand: "Vans",
      image:
          "https://images.pexels.com/photos/2421374/pexels-photo-2421374.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    ),
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
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Converse_logo.svg/180px-Converse_logo.svg.png",
                ),
                title: Text("Converse",
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
