import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  var listDivide;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Khusbu Shrestha"),
            accountEmail: Text("Khusbhu.stha529@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("url"),
            ),
          ),
          ListTile(
            onTap: () {
              // Column(
              //   children: [
              //     print("text"),
              //     // ListTile(
              //     //   leading: Icon(Icons.person),
              //     //   title: Text("IDk"),
              //     // )
              //   ],
              // );
            },
            leading: Icon(
              Icons.dashboard,
              color: Colors.black87,
            ),
            title: Text("DashBoard"),
            tileColor: Colors.white24,
          ),
          listDivide = Divider(
            height: 1,
            thickness: 2,
            indent: 75,
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.settings,
              color: Colors.black87,
            ),
            title: Text("Settings"),
            tileColor: Colors.white24,
          ),
          listDivide,
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.settings,
              color: Colors.black87,
            ),
            title: Text("Settings"),
            tileColor: Colors.white24,
          ),
          listDivide,
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.settings,
              color: Colors.black87,
            ),
            title: Text("Settings"),
            tileColor: Colors.white24,
          ),
          listDivide,
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.settings,
              color: Colors.black87,
            ),
            title: Text("Settings"),
            tileColor: Colors.white24,
          ),
          listDivide,
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.black87,
            ),
            title: Text("Log out"),
            tileColor: Colors.white24,
          ),
          listDivide,
        ],
      ),
    );
  }
}
