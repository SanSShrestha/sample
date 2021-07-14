import 'package:flutter/material.dart';
import 'package:intern_ecommercec/widgets/checkbox.dart';
import 'package:intern_ecommercec/widgets/date_and_time.dart';
import 'package:intern_ecommercec/widgets/radiobutton.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool visibleEye = false;
  var divide;
  DateTime dt;

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController mobileNumber = TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 2, left: 10, right: 10, bottom: 2),
            child: Column(
              children: [
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    hintText: " Please, Enter your full name",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => value.isEmpty ? 'Required' : null,
                ),
                divide = Divider(
                  height: 5,
                  thickness: 2,
                  indent: 30,
                  endIndent: 30,
                ),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => value.isEmpty ? "Required" : null,
                  keyboardType: TextInputType.emailAddress,
                ),
                divide,
                TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                        icon: Icon(Icons.visibility),
                        onPressed: () {
                          if (visibleEye == true) {
                            visibleEye = false;
                          } else {
                            visibleEye = true;
                          }

                          setState(() {});
                        }),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => value.isEmpty ? 'Required' : null,
                  obscureText: visibleEye,
                ),
                divide,
                TextFormField(
                  controller: mobileNumber,
                  decoration: InputDecoration(
                    hintText: "Mobile Number",
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => value.isEmpty ? "Required" : null,
                  keyboardType: TextInputType.phone,
                ),
                divide,
                // radio button
                RadioButton(),
                divide,
                Calender(),
                divide,
                // checkbox
                CheckBox(),
                divide,
                //signup buttonn
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 80)),
                  child: SizedBox(
                    width: 120,
                    height: 50,
                    child: Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(context, "login");
                          },
                          child: Text("Sign Up")),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
