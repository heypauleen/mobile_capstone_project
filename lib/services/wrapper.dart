import 'package:flutter/material.dart';
import 'package:my_capstone_project/services/auth_service.dart';
import 'package:my_capstone_project/views/app_bar.dart';
import '../views/sign_in.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: AuthService.firebase().initialize(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
             final user = AuthService.firebase().currentUser;
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