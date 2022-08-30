import 'package:flutter/material.dart';
import 'package:my_capstone_project/constants/style.dart';

InputDecoration myMultilineTextFieldDecoration() {
  return InputDecoration(
    focusColor: green,
    fillColor: Colors.white,
    filled: true,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: borderColor, width: 2.0),
      borderRadius: BorderRadius.circular(10.0),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(color: borderColor, width: 2.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: borderColor, width: 2.0),
      borderRadius: BorderRadius.circular(10.0),
    ),
    labelStyle: TextStyle(color: green),
    contentPadding: EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 10,
    ),
  );
}
