import 'package:flutter/material.dart';

class emailInputButton extends StatelessWidget {
  String title;

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
}
