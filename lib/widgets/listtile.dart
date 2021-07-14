import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyListTile extends StatefulWidget {
  final String mytext, mysubtext;
  MyListTile({this.mytext, this.mysubtext});
  @override
  _MyListTileState createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.mytext,
          style: GoogleFonts.pangolin(
            fontWeight: FontWeight.w700,
            color: Colors.black,
            // textStyle:
            //     TextStyle(decoration: TextDecoration.underline)
          )),
      subtitle: Text(widget.mysubtext),
    );
  }
}
