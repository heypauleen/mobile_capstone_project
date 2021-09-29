import 'package:flutter/material.dart';
import 'package:my_capstone_project/screens/main_pages/home.dart';
import 'package:my_capstone_project/screens/main_pages/tab_bar.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_image.jpg'),
            fit: BoxFit.cover)
          ),
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
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical:16),
              child: TextFormField(
                decoration: InputDecoration(
                  focusColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff4BBE83), width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: "Username",
                  labelStyle: TextStyle(color: Color(0xff4BBE83))
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical:2),
              child: TextFormField(
                decoration: InputDecoration(
                  focusColor: Color(0xff4BBE83),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff4BBE83), width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Color(0xff4BBE83), width: 2.0),
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Color(0xff4BBE83)
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical:10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize:14),
                    primary: Color(0xff4BBE83),
                    fixedSize:Size(0, 55)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Tab_Bar()),
                  );
                },
                child: const Text ('Login'),

              ),
            ),
            Center(
              child: Text("Forgot Password",
                style: const TextStyle(fontSize: 14, color: Colors.grey)
              )
            )
          ],
        )


      ),
      );
  }
}
