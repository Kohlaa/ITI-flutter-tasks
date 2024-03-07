import 'package:flutter/material.dart';
import 'package:sa3edny/homeScreen/register/register.dart';

class emailInputButton extends StatelessWidget {
  String title;
  static bool valid = false;

  emailInputButton({required this.title});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Padding(
            padding: EdgeInsets.all(0.0),
            child: Icon(
              Icons.alternate_email,
              color: Colors.grey,
            ),
          ),
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          // labelText: 'User Name',
          hintText: '$title',
        ),
      ),
    );
  }
 static validate(){
      valid=true;
  }
}

