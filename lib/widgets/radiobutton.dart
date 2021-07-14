import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String gender;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: Text("Male")),
        Expanded(
          flex: 1,
          child: Radio(
              value: "male",
              groupValue: gender,
              onChanged: (value) {
                gender = value;
                setState(() {});
              }),
        ),
        VerticalDivider(
          thickness: 20,
        ),
        Expanded(flex: 2, child: Text("Female")),
        Expanded(
          flex: 1,
          child: Radio(
              value: "female",
              groupValue: gender,
              onChanged: (value) {
                gender = value;
                setState(() {});
              }),
        ),
        //Expanded(flex: 2, child: Text("Others")),
        // Expanded(
        //     flex: 1,
        //     child: Radio(
        //         value: "others",
        //         groupValue: gender,
        //         onChanged: (value) {
        //           gender = value;
        //         }))
      ],
    );
  }
}
