import 'package:flutter/material.dart';
import 'package:sa3edny/homeScreen/register/registerComponents/checkBox.dart';
import '../login/loginComponents/emailInputButton.dart';
import '../login/loginComponents/loginButton.dart';
import '../login/loginComponents/passwordInputButton.dart';
import '../login/screens/login.dart';

class register extends StatefulWidget {
  static const String routeName = "register-screen";

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Color(0xFF242424),
          ),
        ),
      ),
      body: ListView(children: [

      ]),
    );
  }
}
