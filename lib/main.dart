import 'package:flutter/material.dart';
import 'package:my_capstone_project/constants/routes.dart';
import 'package:my_capstone_project/views/app_bar.dart';
import 'package:my_capstone_project/views/sign_in.dart';
import 'package:my_capstone_project/services/wrapper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
 runApp(
   MaterialApp(
      theme: ThemeData(
        fontFamily: 'Product Sans',
        primaryColor: Color(0xff4BBE83)
      ),
      home: Wrapper(),
      routes: {
         loginRoute : (context) => SignIn(),
         homePageRoute : (context) => App_Bar(),
      }
    ),
 );
} 
