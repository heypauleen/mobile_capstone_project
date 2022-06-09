import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;
import 'package:my_capstone_project/constants/routes.dart';
import 'package:my_capstone_project/services/auth_exceptions.dart';
import 'package:my_capstone_project/services/auth_service.dart';

import '../utilities/show_error_dialog.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late final TextEditingController _email;
  late final TextEditingController _password;

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
    return Scaffold(
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
                          borderSide:
                              BorderSide(color: Color(0xff4BBE83), width: 2.0),
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
                          borderSide:
                              BorderSide(color: Color(0xff4BBE83), width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(color: Color(0xff4BBE83), width: 2.0),
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
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => Tab_Bar()),
                      //);
                      final email = _email.text;
                      final password = _password.text;
                      try {
                        await AuthService.firebase().logIn(
                          email: email,
                          password: password,
                        );
                        final user = AuthService.firebase().currentUser;
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            homePageRoute, (route) => false);
                      } on UserNotFoundAuthException {
                        await showErrorDialog(context, "User not found");
                      } on WrongPasswordAuthException {
                        await showErrorDialog(context, "Wrong credentials");
                      } on GenericAuthException {
                        await showErrorDialog(context, 'Authentication Error');
                      }
                    },
                    child: const Text('Login'),
                  ),
                ),
                Center(
                    child: Text("Forgot your password? Click here",
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey)))
              ],
            ),
          )),
    );
  }
}
