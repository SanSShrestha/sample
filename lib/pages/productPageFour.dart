import 'package:flutter/material.dart';
import 'package:intern_ecommercec/model/product.dart';
import 'package:intern_ecommercec/pages/productDescription.dart';
import 'package:intern_ecommercec/widgets/card.dart';
import 'package:intern_ecommercec/widgets/drawer.dart';
import 'package:intern_ecommercec/widgets/productCard.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPageFour extends StatefulWidget {
  @override
  _ProductPageFourState createState() => _ProductPageFourState();
}

class _ProductPageFourState extends State<ProductPageFour> {
  List<Product> products = [
    Product(
        sku: "v001",
        name: "Old skool",
        price: "3200",
        brand: "Vans",
        image:
            "https://images.pexels.com/photos/1054787/pexels-photo-1054787.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    Product(
        sku: "v002",
        name: "Old skool",
        price: "3200",
        brand: "Vans",
        image:
            "https://images.pexels.com/photos/1478442/pexels-photo-1478442.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
    Product(
        sku: "v003",
        name: "Old skool",
        price: "3200",
        brand: "Vans",
        image:
            "https://images.pexels.com/photos/1600052/pexels-photo-1600052.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
    Product(
        sku: "v004",
        name: "Old skool",
        price: "3200",
        brand: "Vans",
        image:
            "https://images.pexels.com/photos/1570867/pexels-photo-1570867.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
    Product(
        sku: "v005",
        name: "Old skool",
        price: "3200",
        brand: "Vans",
        image:
            "https://images.pexels.com/photos/1598505/pexels-photo-1598505.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
    Product(
        sku: "v006",
        name: "Old skool",
        price: "3200",
        brand: "Vans",
        image:
            "https://images.pexels.com/photos/4061385/pexels-photo-4061385.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
    Product(
        sku: "v007",
        name: "Old skool",
        price: "3200",
        brand: "Vans",
        image:
            "https://images.pexels.com/photos/4215840/pexels-photo-4215840.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
    Product(
        sku: "v008",
        name: "Old skool",
        price: "3200",
        brand: "Vans",
        image:
            "https://images.pexels.com/photos/1456737/pexels-photo-1456737.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Product(
        sku: "v009",
        name: "Old skool",
        price: "3200",
        brand: "Vans",
        image:
            "https://images.pexels.com/photos/1124466/pexels-photo-1124466.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
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
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Logo_NIKE.svg/500px-Logo_NIKE.svg.png"),
                title: Text("Nike",
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
