import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/style/app_style.dart';

class Textstyleforth extends StatelessWidget {
  final String text;
  final TextAlign aling;
  final bool? isColor;

  const Textstyleforth({super.key, required this.text,this.aling=TextAlign.start,this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: aling,
      text,
      style: isColor==null?Appstyle.headlinestyle4.copyWith(color: Colors.white):Appstyle.headlinestyle4,
    );
  }
}
