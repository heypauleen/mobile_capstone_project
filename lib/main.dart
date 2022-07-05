import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_capstone_project/constants/routes.dart';
import 'package:my_capstone_project/services/auth/bloc/auth_bloc.dart';
import 'package:my_capstone_project/services/auth/firebase_auth_provider.dart';
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
      home: BlocProvider<AuthBloc>(
        create: (context) => AuthBloc(FirebaseAuthProvider()),
        child: const Wrapper(),
      ),
      routes: {
        //  loginRoute : (context) => SignIn(),
        //  homePageRoute : (context) => App_Bar(),
      }
    ),
 );
} 
