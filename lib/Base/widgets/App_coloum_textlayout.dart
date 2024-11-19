import 'package:flutter/cupertino.dart';

import 'Textstyle_forth.dart';
import 'Textstyle_third.dart';

class AppColoumTextLayout extends StatelessWidget {
  final String toptext;
  final String bottomtext;
  final aling;
  final bool? isColor;
  //final Crossaxisalingnment aling,
  const AppColoumTextLayout(
      {super.key,
      required this.toptext,
      required this.bottomtext,
        this.isColor,
      this.aling = CrossAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: aling,
      children: [
        Textstylethird(text: toptext,isColor: isColor,),
        Textstyleforth(text: bottomtext,isColor: isColor,),
      ],
    );
  }
}
