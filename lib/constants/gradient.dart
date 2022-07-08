import 'package:flutter/widgets.dart'; 

Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xff006C35), Color(0xff4BBE83)],
  ).createShader(
    Rect.fromLTWH(0.0, 70.0, 0.0, 200.0),
  );