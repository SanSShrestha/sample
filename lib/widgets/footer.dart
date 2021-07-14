import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  var hypertextDivide;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RoundedDiagonalPathClipper(),
      child: Container(
        width: MediaQuery.of(context).size.width * .99,
        decoration: BoxDecoration(
            // color: Colors.white,
            border: Border.all(color: Colors.white)),
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
                width: MediaQuery.of(context).size.width * .99,
                height: 40,
                child: ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 250),
                    child: Text("Back to top"),
                  ),
                  onPressed: () {},
                )),
            Divider(
              height: 2,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .99,
              color: Theme.of(context).primaryColor,
              // color: Colors.white,
              child: Row(
                children: [
                  // SizedBox(
                  //   width: 15,
                  // ),
                  // first column
                  Expanded(
                    child: Column(
                      children: [
                        InkWell(
                          splashColor: Colors.red,
                          onTap: () {},
                          child: Text("lorem",
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              )),
                        ),
                        hypertextDivide = SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text("lorem",
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              )),
                        ),
                        hypertextDivide,
                        InkWell(
                          onTap: () {},
                          child: Text("lorem",
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              )),
                        ),
                        hypertextDivide,
                        InkWell(
                          onTap: () {},
                          child: Text("lorem",
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              )),
                        ),
                        hypertextDivide,
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: 110,
                  // ),
                  // second column
                  Expanded(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text("lorem",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              )),
                        ),
                        hypertextDivide,
                        InkWell(
                          onTap: () {},
                          child: Text("lorem",
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              )),
                        ),
                        hypertextDivide,
                        InkWell(
                          onTap: () {},
                          child: Text("lorem",
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              )),
                        ),
                        hypertextDivide,
                        InkWell(
                          onTap: () {},
                          child: Text("lorem",
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              )),
                        ),
                        hypertextDivide,
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: 100,
                  // ),
                  //third column
                  Expanded(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text("lorem",
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              )),
                        ),
                        hypertextDivide,
                        InkWell(
                          onTap: () {},
                          child: Text("lorem",
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              )),
                        ),
                        hypertextDivide,
                        InkWell(
                          onTap: () {},
                          child: Text("lorem",
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              )),
                        ),
                        hypertextDivide,
                        InkWell(
                          onTap: () {},
                          child: Text("lorem",
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              )),
                        ),
                        hypertextDivide,
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 2,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.99,
              color: Theme.of(context).primaryColor,
              height: 30,
              child: Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Text("About us",
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          )),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Text("Contact us",
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          )),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Text("Sell with us",
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 2,
            ),
            Container(
              color: Theme.of(context).primaryColor,
              width: MediaQuery.of(context).size.width * .99,
              height: 50,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Text("Conditions of Use",
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          )),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Text("privacy Notice",
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          )),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Text("© 2015-2021, shoes.com, Inc.",
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
