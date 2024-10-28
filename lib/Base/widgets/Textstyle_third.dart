import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/style/app_style.dart';

class Textstylethird extends StatelessWidget {
  final String text;
  final textAlign;
  const Textstylethird({super.key,required this.text,this.textAlign=TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Appstyle.headlinestyle3
          .copyWith(color: Colors.white),
    );
  }
}
