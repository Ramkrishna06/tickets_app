import 'package:flutter/material.dart';

Color primary = Color(0xFF687daf);

class Appstyle {
  static Color primarycolor = primary;
  static Color textcolor = Color(0xFF3b3b3b);

  static TextStyle headline1 = TextStyle(
    fontSize: 27,
    fontWeight: FontWeight.w800,
    color: Appstyle.textcolor,
  );
  static TextStyle headline3 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w800,
  );
}
