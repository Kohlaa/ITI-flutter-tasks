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
        Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // margin: EdgeInsets.all(18),
              height: 192.0,
              width: 193.0,
              // padding: const EdgeInsets.only(top: 40),


            ),
            Container(
              padding: EdgeInsets.only(right: 30),
              alignment: Alignment.centerRight,
              // color: Colors.grey,
              height: 36,
              width: double.infinity,
              child: const Text(
                "تأكيد كلمة المرور ",
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(right: 30),
              alignment: Alignment.centerRight,
              height: 24,
              width: double.infinity,
              child: const Text(
                "قم بادخال كلمة المرور المكونه من 8 ارقام",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            passwordInputButton(
              hintTxt: 'ادخل كلمة المرور الجديده',
            ),
            passwordInputButton(
              hintTxt: ' ادخل كلمة المرور الجديده',
            ),
            const SizedBox(
              height: 12,
            ),
            loginButton(btnTxt: 'ارسال'),
          ],
        ),
      ]),
    );
  }
}
