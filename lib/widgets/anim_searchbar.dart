import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class MyAnimSearchBar extends StatefulWidget {
  @override
  _MyAnimSearchBarState createState() => _MyAnimSearchBarState();
}

class _MyAnimSearchBarState extends State<MyAnimSearchBar> {
  TextEditingController textController = TextEditingController();
  // final int padTop;
  // MyAnimSearchBar({this.padTop});
  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: EdgeInsets.only(top: padTop, left: padleft,),
      padding: EdgeInsets.only(left: 5),
      child: AnimSearchBar(
          rtl: true,
          width: MediaQuery.of(context).size.width,
          textController: textController,
          onSuffixTap: () {
            setState(() {
              textController.clear();
            });
          }),
    );
  }
}
