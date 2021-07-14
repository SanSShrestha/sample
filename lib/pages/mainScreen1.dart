// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

// class MainScreen1 extends StatefulWidget {
//   @override
//   _MainScreen1State createState() => _MainScreen1State();
// }

// class _MainScreen1State extends State<MainScreen1> {
//   int chosenIndex = 0;
//   PageController controller = PageController();
//   List<GButton> tabs = new List();
//   List<Color> colors = [Colors.purple, Colors.pink, Colors.amber, Colors.teal];

//   @override
//   void initState() {
//     super.initState();
//     var padding = EdgeInsets.symmetric(horizontal: 12, vertical: 5);
//     double gap = 30;

//     tabs.add(GButton(
//       gap: gap,
//       iconActiveColor: Colors.purple,
//       iconColor: Colors.black,
//       textColor: Colors.purple,
//       color: Colors.purple.withOpacity(.2),
//       iconSize: 24,
//       padding: padding,
//       icon: Icons.home_filled,
//     ));
//     tabs.add(GButton(
//       gap: gap,
//       iconActiveColor: Colors.pink,
//       iconColor: Colors.black,
//       textColor: Colors.pink,
//       color: Colors.pink.withOpacity(.2),
//       iconSize: 24,
//       padding: padding,
//       icon: Icons.home_filled,
//     ));
//     tabs.add(GButton(
//       gap: gap,
//       iconActiveColor: Colors.amber,
//       iconColor: Colors.black,
//       textColor: Colors.amber,
//       color: Colors.amber.withOpacity(.2),
//       iconSize: 24,
//       padding: padding,
//       icon: Icons.home_filled,
//     ));
//     tabs.add(GButton(
//       gap: gap,
//       iconActiveColor: Colors.teal,
//       iconColor: Colors.black,
//       textColor: Colors.teal,
//       color: Colors.teal.withOpacity(.2),
//       iconSize: 24,
//       padding: padding,
//       icon: Icons.home_filled,
//     ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: PageView.builder(
//           itemBuilder: (context, position) {
//             return Container(
//               color: colors[position],
//             );
//           },
//           itemCount: tabs.length,
//         ),
//         bottomNavigationBar: SafeArea(
//           child: Container(
//             margin: EdgeInsets.symmetric(horizontal: 10),
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.all(Radius.circular(100)),
//                 boxShadow: [
//                   BoxShadow(
//                       spreadRadius: -10,
//                       blurRadius: 60,
//                       color: Colors.black.withOpacity(.20),
//                       offset: Offset(0, 15))
//                 ]),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
//               child: GNav(
//                   tabs: tabs,
//                   selectedIndex: chosenIndex,
//                   onTabChange: (index) {
//                     print(index);
//                     setState(() {
//                       chosenIndex = index;
//                     });
//                     controller.jumpToPage(index);
//                   }),
//             ),
//           ),
//         ));
//   }
// }
