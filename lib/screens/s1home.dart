import 'package:flutter/material.dart';
import 'package:intern_ecommercec/widgets/anim_searchbar.dart';
import 'package:intern_ecommercec/widgets/carouselExtended.dart';
import 'package:intern_ecommercec/widgets/drawer.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:intern_ecommercec/widgets/footer.dart';
import 'package:intern_ecommercec/widgets/listtile.dart';
import 'package:intern_ecommercec/widgets/discoutntsideScroller.dart';
import 'package:intern_ecommercec/model/product.dart';
import 'package:intern_ecommercec/widgets/recommendedScroller.dart';
import 'package:intern_ecommercec/widgets/upcustomClip2.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
                clipper: WaveClipperOne(flip: true),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    border: Border.all(
                        // color: Colors.black,
                        ),
                  ),
                  height: 80,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 2, bottom: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            // color: Theme.of(context).primaryColor,
                            color: Color.fromRGBO(75, 0, 130, .05),
                            child: IconButton(
                              iconSize: 32,
                              icon: Icon(Icons.place_outlined),
                              onPressed: () {},
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5, bottom: 20),
                        child: SizedBox(width: 290, child: MyAnimSearchBar()),
                      ),
                    ],
                  ),
                )),
            ListTile(
              title: Text("TODAY'S SALE, Dont Miss!",
                  style: GoogleFonts.pangolin(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    // textStyle:
                    //     TextStyle(decoration: TextDecoration.underline)
                  )),
              subtitle: Text("10 % discount on all converse shoes."),
            ),
            // calling a horizontal scroller discount
            SideScroller(),
            SizedBox(
              height: 20,
            ),
            CarouselExtended(),
            MyListTile(
              mytext: "Khusbu",
              mysubtext: "shrestha",
            ),
            RecommendedScroller(),
            SizedBox(
              height: 40,
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
