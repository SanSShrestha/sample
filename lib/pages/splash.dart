import 'package:flutter/material.dart';
import 'package:intern_ecommercec/widgets/downCustomclip2.dart';
import 'package:intern_ecommercec/widgets/upcustomClip2.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.popAndPushNamed(context, 'login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //Upper shape
            ClipPath(
              clipper: WaveClipperOne(flip: true),
              child: Container(
                height: 80,
                // color: (Theme.of(context).primaryColor),4
                color: Colors.white,
                child: Center(
                  child: Text("Name",
                      style: GoogleFonts.pangolin(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              child: Image.network(
                "https://i.pinimg.com/originals/0b/b3/23/0bb323a42f4c1826138453a9ce521015.png",
                fit: BoxFit.contain,
              ),
            ),
            // SizedBox(
            //     // height: 58,
            //     ),
            //lower
            ClipPath(
              clipper: WaveClipperOne(flip: true, reverse: true),
              child: Container(
                height: 80,
                // color: (Theme.of(context).primaryColor),
                color: Colors.white,
                child: Center(
                  child: Text(""),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
