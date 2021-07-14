import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ClipPath(
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
            ),
            Form(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.elliptical(10, 80)),
                      child: SizedBox(
                        width: 120,
                        height: 50,
                        child: Expanded(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.popAndPushNamed(context, "home");
                              },
                              child: Text("Login",
                                  style: GoogleFonts.pangolin(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.white)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                          top: 0,
                        ),
                        child: Row(
                          children: [
                            Text("New to the platform?",
                                style: GoogleFonts.pangolin(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black54,
                                )),
                            VerticalDivider(
                              thickness: 2,
                              width: 30,
                            ),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.pushNamed(context, "signup");
                                  });
                                },
                                child: Text("Signup here.",
                                    style: GoogleFonts.pangolin(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.blue,
                                        textStyle: TextStyle(
                                            decoration:
                                                TextDecoration.underline)))),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // ClipRRect(
                    //   borderRadius: BorderRadius.all(Radius.elliptical(10, 80)),
                    //   child: SizedBox(
                    //     width: 120,
                    //     height: 50,
                    //     child: Expanded(
                    //       child: ElevatedButton(
                    //           onPressed: () {
                    //             print("Maya");
                    //           },
                    //           child: Text("Sign Up")),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
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
        ),
      ),
    );
  }
}
