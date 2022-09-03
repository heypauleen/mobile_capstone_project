import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_capstone_project/constants/style.dart';
import 'package:my_capstone_project/view/widgets/gradient_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
                width: 150,
                height: 150,
                //margin: EdgeInsets.all(100),
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/doh_logo.png'),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              MyGradientHeaderText(
                text: "HEALTHBYTE: ",
                fontSize: 30,
              ),
              MyGradientHeaderText(
                text: "Application for Zamboanga Sibugay PDOHO ",
                fontSize: 30,
              ),
              SizedBox(
                height: 50,
              ),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
