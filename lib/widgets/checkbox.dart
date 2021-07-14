import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool choice = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Checkbox(
              value: choice,
              onChanged: (value) {
                choice = value;
              }),
        ),
        Expanded(
            flex: 5,
            child: Text("I agree to the Terms of Use and privacy policy."))
      ],
    );
  }
}
