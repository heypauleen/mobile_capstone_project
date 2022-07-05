import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;
import 'package:my_capstone_project/services/auth/auth_exceptions.dart';
import 'package:my_capstone_project/services/auth/bloc/auth_bloc.dart';
import 'package:my_capstone_project/services/auth/bloc/auth_event.dart';
import 'package:my_capstone_project/services/auth/bloc/auth_state.dart';
import 'package:my_capstone_project/utilities/dialogs/loading_dialog.dart';
import '../utilities/dialogs/error_dialog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  CloseDialog? _closeDialogHandle;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) async {
        if (state is AuthStateLoggedOut) {
          // final closeDialog = _closeDialogHandle;

          // if (!state.isLoading && closeDialog != null) {
          //   closeDialog();
          //   _closeDialogHandle = null;
          // } else if (state.isLoading && closeDialog == null) {
          //   _closeDialogHandle = showLoadingDialog(
          //     context: context,
          //     text: 'Loading...',
          //   );
          // }

          if (state.exception is UserNotFoundAuthException) {
            await showErrorDialog(context, "User not found");
          } else if (state.exception is WrongPasswordAuthException) {
            await showErrorDialog(context, "Wrong credentials");
          } else if (state.exception is GenericAuthException) {
            await showErrorDialog(context, "Authentication Error");
          }
        }
      },
      child: Scaffold(
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg_image.jpg'),
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
                    width: 210,
                    height: 210,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/doh_logo.png'),
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                    child: TextFormField(
                      controller: _email,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                          focusColor: Colors.green,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xff4BBE83), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: "Email",
                          labelStyle: TextStyle(color: Color(0xff4BBE83))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                    child: TextFormField(
                      controller: _password,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                          focusColor: Color(0xff4BBE83),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xff4BBE83), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xff4BBE83), width: 2.0),
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Color(0xff4BBE83))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 14),
                          primary: Color(0xff4BBE83),
                          fixedSize: Size(0, 55)),
                      onPressed: () async {
                        final email = _email.text;
                        final password = _password.text;
                        context.read<AuthBloc>().add(
                              AuthEventLogin(
                                email,
                                password,
                              ),
                            );
                      },
                      child: const Text('Login'),
                    ),
                  ),
                  Center(
                      child: Text("Forgot your password? Click here",
                          style: const TextStyle(
                              fontSize: 14, color: Colors.grey)))
                ],
              ),
            )),
      ),
    );
  }
}
