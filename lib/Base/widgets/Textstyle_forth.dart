import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/style/app_style.dart';

class Textstyleforth extends StatelessWidget {
  final String text;
  final TextAlign aling;

  const Textstyleforth({super.key, required this.text,this.aling=TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Appstyle.headlinestyle4.copyWith(color: Colors.white),
    );
  }
}
