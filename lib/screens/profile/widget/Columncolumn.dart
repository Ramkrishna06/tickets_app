import "package:flutter/cupertino.dart";
import "package:ticket_app/Base/res/style/app_style.dart";

class ColumnColoumn extends StatelessWidget {
  final textleftup;
  final textleftdown;
  final textrightup;
  final textrightdown;

  const ColumnColoumn(
      {super.key,
      required this.textleftup,
      required this.textrightup,
      required this.textrightdown,
      required this.textleftdown});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(textleftup,style: TextStyle( fontSize: 20,fontWeight: FontWeight.w600),),
            SizedBox(height: 5,),
            Text(textleftdown,style: TextStyle(color: Appstyle.textcolor),),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(textrightup,style: TextStyle( fontSize: 20,fontWeight: FontWeight.w600),),
            SizedBox(height: 5,),
            Text(textrightdown,style: TextStyle(fontSize: 18,color: Appstyle.textcolor),),
          ],
        )
      ],
    );
  }
}
