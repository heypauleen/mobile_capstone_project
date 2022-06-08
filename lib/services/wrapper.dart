
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_capstone_project/views/app_bar.dart';

import '../firebase_options.dart';
import '../views/sign_in.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
             final user = FirebaseAuth.instance.currentUser;
              if (user != null) {
                return App_Bar();
              } else {
                return const SignIn();
              }
            default:
            return const CircularProgressIndicator(); //fix this
          }
           
        } 
    );
  }
}