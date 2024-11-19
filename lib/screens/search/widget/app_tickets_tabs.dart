import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/style/app_style.dart';

class AppTicketsTabs extends StatelessWidget {
  final text1;
  final String text2;
  const AppTicketsTabs({super.key,required this.text1,required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFFF4F6Fd),
      ),
      child: Row(
        children: [
          AppTabs(text: text1,tabBorder: false,),
          AppTabs(text: text2,tabBorder: true,tabcolor: false,)
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  final String text;
  final bool tabBorder;
  final bool tabcolor;
  const AppTabs({super.key,this.text="",this.tabBorder=false,this.tabcolor=true});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .44,
      decoration: BoxDecoration(
        color:tabcolor==true?Colors.white: Colors.transparent,
        borderRadius: tabBorder==false?BorderRadius.horizontal(left: Radius.circular(50)):BorderRadius.horizontal(left: Radius.circular(50)),
      ),
      child: Center(
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
