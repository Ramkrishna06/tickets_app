import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/style/app_style.dart';

class Textstylethird extends StatelessWidget {
  final String text;
  final bool? isColor;
  final textAlign;
  const Textstylethird({super.key,required this.text,this.textAlign=TextAlign.start,this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: isColor==null?Appstyle.headlinestyle3
          .copyWith(color: Colors.white):Appstyle.headlinestyle3,
    );
  }
}
