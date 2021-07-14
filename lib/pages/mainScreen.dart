import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intern_ecommercec/screens/s1home.dart';
import 'package:intern_ecommercec/screens/s2defaultTabController.dart';
import 'package:intern_ecommercec/screens/s3.dart';
import 'package:intern_ecommercec/screens/s4.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int donkey = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        // selectedFontSize: 14.0,
        selectedLabelStyle: TextStyle(),
        unselectedItemColor: Color.fromRGBO(
          230,
          211,
          245,
          .50,
        ),

        // unselectedFontSize: 4.0,
        unselectedLabelStyle: TextStyle(fontFamily: "monospace"),
        onTap: (int value) {
          // donkey = value;
          setState(() {
            donkey = value;
          });
        },
        currentIndex: donkey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),

            label: "Home",
            activeIcon: Icon(
              Icons.home_outlined,
              // color: Colors.red,
            ),
            // backgroundColor: Theme.of(context).primaryColor),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.shopping_bag,
              color: Colors.red,
            ),
            icon: Icon(Icons.shopping_bag_outlined),
            label: "Products",
            // backgroundColor: Theme.of(context).primaryColor),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.payment,
              // color: Colors.red,
            ),
            icon: Icon(Icons.payment_outlined),
            label: "Payment",
            // backgroundColor: Theme.of(context).primaryColor),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.miscellaneous_services_outlined,
              color: Colors.red,
            ),
            icon: Icon(Icons.miscellaneous_services),
            label: "Service",
            // backgroundColor: Theme.of(context).primaryColor),
          ),
        ],
      ),
      body: donkey == 0
          ? HomePage()
          : donkey == 1
              ? ProductTabController()
              : donkey == 2
                  ? PaymentPage()
                  : ServicePage(),
    );
  }
}
