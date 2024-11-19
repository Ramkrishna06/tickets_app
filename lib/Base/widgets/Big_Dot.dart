import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  final bool? isColor;
  const BigDot({super.key,this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(width: 4, color: isColor==null?Colors.white: Colors.blue),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
