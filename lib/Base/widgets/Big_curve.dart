import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/style/app_style.dart';

class BigCurve extends StatelessWidget {
  final bool isRight;
  final  bool? isColor;
  const BigCurve({super.key, required this.isRight,this.isColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 12,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color:isColor==null?Colors.white:Appstyle.bgcolor,
          borderRadius: isRight == true
              ? BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )
              : BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
        ),
      ),
    );
  }
}
