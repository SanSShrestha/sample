import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

class UpCustomClip2 extends StatefulWidget {
  @override
  _UpCustomClip2State createState() => _UpCustomClip2State();
}

class _UpCustomClip2State extends State<UpCustomClip2> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperOne(flip: true),
      child: Container(
        height: 120,
        color: (Theme.of(context).primaryColor),
        child: Center(
          child: Text("E-commerce",
              style: GoogleFonts.pangolin(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
