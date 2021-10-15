import 'package:flutter/widgets.dart'; 

class Gradient {
 Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xff006C35), Color(0xff4BBE83)],
  ).createShader(
    Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );
}