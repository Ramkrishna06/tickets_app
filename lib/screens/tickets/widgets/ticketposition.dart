import 'package:flutter/material.dart';

import '../../../Base/res/style/app_style.dart';

class TicketPositionCircle extends StatelessWidget {
  final bool? postion;
  const TicketPositionCircle({super.key, required this.postion});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left:postion==true? 12:null,
      right:postion==true? null:12,
      top: 340,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2),
        ),
        child: CircleAvatar(
          maxRadius: 5,
          backgroundColor: Appstyle.textcolor,
        ),
      ),
    );
  }
}
