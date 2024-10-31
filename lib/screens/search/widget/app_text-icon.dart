import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/style/app_style.dart';

class ApptextIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  const ApptextIcon({super.key,required this.text,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(icon,color: Appstyle.planecolor,),
          SizedBox(width: 10,),
          Text(text),
        ],
      ),
    );
  }
}
