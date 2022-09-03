import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MyGradientHeaderText extends StatelessWidget {
  final String text;
  final double? fontSize;
  const MyGradientHeaderText({super.key, this.text = "", this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GradientText(
        text,
        colors: [
          Color.fromARGB(255, 18, 171, 92),
          Color.fromARGB(255, 127, 227, 175)
        ],
        gradientDirection: GradientDirection.ttb,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
      ),
    );
  }
}
