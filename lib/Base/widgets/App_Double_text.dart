import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/style/app_style.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key, required this.bigtext, required this.smalltext});
  final String bigtext;
  final String smalltext;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigtext,style: Appstyle.headlinestyle2), 
        InkWell(
          child: Text(smalltext,style: Appstyle.textstyle.copyWith(color: Appstyle.primarycolor),),
        )
      ],
    );
  }
}
