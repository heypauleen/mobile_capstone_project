import 'package:flutter/material.dart';
import 'package:my_capstone_project/constants/style.dart';

class MyTextFieldTitle extends StatelessWidget {
  final String text;
  const MyTextFieldTitle({super.key, this.text = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(19, 10, 0, 0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: green,
        ),
      ),
    );
  }
}
