import 'package:flutter/material.dart';

import '../../register/register.dart';

class loginButton extends StatelessWidget {
  String btnTxt;

  loginButton({super.key, required this.btnTxt});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      // margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      padding: EdgeInsets.all(10),
      height: 44,
      minWidth: 201,
      color: Colors.orange,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => register()),
        );

        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(
        //     builder: (BuildContext context) =>  L(),
        //   ),
        // );
      },
      child: Text(
        btnTxt,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: 'Poppins',
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
