import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_capstone_project/services/auth/bloc/auth_event.dart';
import 'package:my_capstone_project/services/auth/bloc/auth_state.dart';
import 'package:my_capstone_project/views/app_bar.dart';
import '../views/sign_in.dart';
import 'auth/bloc/auth_bloc.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<AuthBloc>().add(const AuthEventInitialize());
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      if (state is AuthStateLoggedIn) {
        return App_Bar();
      } else if (state is AuthStateLoggedOut) {
        return SignIn();
      } else {
        return Scaffold(
          body: CircularProgressIndicator(),
        );
      }
    });

    // return FutureBuilder(
    //     future: AuthService.firebase().initialize(),
    //     builder: (context, snapshot) {
    //       switch (snapshot.connectionState) {
    //         case ConnectionState.done:
    //           final user = AuthService.firebase().currentUser;
    //           if (user != null) {
    //             return App_Bar();
    //           } else {
    //             return const SignIn();
    //           }
    //         default:
    //           return const CircularProgressIndicator(); //fix this
    //       }
    //     });
  }
}
