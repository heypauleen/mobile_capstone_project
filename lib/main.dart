import 'package:flutter/material.dart';
import 'package:my_capstone_project/screens/wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Product Sans',
        primaryColor: Color(0xff4BBE83)
      ),
      home: Wrapper(),
    );
  }
}
