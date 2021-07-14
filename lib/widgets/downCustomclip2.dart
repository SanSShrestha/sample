import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

class DownCustomClip2 extends StatefulWidget {
  @override
  _DownCustomClip2State createState() => _DownCustomClip2State();
}

class _DownCustomClip2State extends State<DownCustomClip2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ClipPath(
            clipper: WaveClipperOne(flip: true, reverse: true),
            child: Container(
              height: 120,
              color: (Theme.of(context).primaryColor),
              child: Center(
                child: Text(""),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
