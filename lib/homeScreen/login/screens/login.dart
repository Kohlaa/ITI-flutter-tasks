import 'package:flutter/material.dart';

import '../../register/register.dart';
import '../loginComponents/emailInputButton.dart';
import '../loginComponents/loginButton.dart';
import '../loginComponents/loginWith.dart';
import '../loginComponents/passwordInputButton.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "login-screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.access_alarms_outlined,
            color: Color(0xFF242424),
          ),
        ),
        actions: [
          Icon(Icons.favorite)
        ],
      ),
      body: ListView(children: [
        Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(18),
              height: 160.0,
              width: 190.0,
              padding: const EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
              ),
              child: Stack(alignment: Alignment.bottomCenter, children: [
                 Image.asset('assets/images/person.png')
                  ,
              ]),
            ),

            SizedBox(
              height: 20,
            ),
            emailInputButton(
              title: ' email',
            ),
            SizedBox(
              height: 10,
            ),
            passwordInputButton(
              hintTxt: 'Password',
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        //Poppins    //fontFamily: 'assets/googleFonts/Poppins-Bold.ttf',
                        color: Color(0xFFD73131),
                      ),
                    ),
                    onTap: () {}),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            loginButton(btnTxt: 'Login'),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerRight,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => register()),
                    ),
                    child: const Text(
                      'Register?',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                  ),
                  const Text('Don\'t have account?',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF242424))),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
