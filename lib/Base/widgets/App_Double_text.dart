import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/style/app_style.dart';
import 'package:ticket_app/screens/Home/all_tickets.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key,
      required this.bigtext,
      required this.smalltext,
      required this.func});
  final String bigtext;
  final String smalltext;
  //final String func;
  final VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigtext, style: Appstyle.headlinestyle2),
        InkWell(
          //       onTap: (){
          // // Navigator. push(
          // //     context,
          // //     MaterialPageRoute<void>(
          // //     builder: (BuildContext context) =>  AllTickets(),
          // // ),
          // // );
          // }
          onTap: func,
          child: Text(
            smalltext,
            style: Appstyle.textstyle.copyWith(color: Appstyle.primarycolor),
          ),
        )
      ],
    );
  }
}
