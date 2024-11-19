import 'package:flutter/material.dart';

Color primary = Color(0xFF687daf);

class Appstyle {
  static Color primarycolor = primary;
  static Color bgcolor = Color(0xffa79fc9);
  static Color textcolor = Color(0xFF3b3b3b);
  static Color ticketBlue = Color(0xFF526799);
  static Color ticketorange = Color(0xFFF37B67);
  static Color planecolor = Color(0xFFBFC2DF);
  static Color ticketcolor = Colors.white;
  static TextStyle textstyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Appstyle.textcolor,
  );

  /////////////////
  static TextStyle headline1 = TextStyle(
    fontSize: 27,
    fontWeight: FontWeight.w800,
    color: Appstyle.textcolor,
  );

  static TextStyle headlinestyle2 = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.bold,
    color: Appstyle.textcolor,
  );

  static TextStyle headlinestyle3 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w800,
  );
  static TextStyle headlinestyle4 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headlinestyle6 = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );
}
