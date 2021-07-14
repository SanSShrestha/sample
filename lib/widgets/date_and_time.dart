import 'package:flutter/material.dart';

class Calender extends StatefulWidget {
  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  DateTime dt;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          suffixIcon: IconButton(
              icon: Icon(Icons.money),
              onPressed: () async {
                dt = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1940),
                  lastDate: DateTime(2022),
                );
              }),
          border: OutlineInputBorder()),
    );
  }
}
