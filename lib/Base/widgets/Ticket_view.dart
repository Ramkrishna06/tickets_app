import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/style/app_style.dart';
import 'package:ticket_app/Base/widgets/App_coloum_textlayout.dart';
import 'package:ticket_app/Base/widgets/App_layoutbuilder.dart';
import 'package:ticket_app/Base/widgets/Big_Dot.dart';
import 'package:ticket_app/Base/widgets/Big_curve.dart';
import 'package:ticket_app/Base/widgets/Textstyle_forth.dart';
import 'package:ticket_app/Base/widgets/Textstyle_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //blue part ticket
            Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                  color: Appstyle.ticketBlue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Textstylethird(text: "NYC"),
                      Expanded(
                        child: Container(),
                      ),
                      BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                                height: 25,
                                child: AppLayoutBuilder(randomnumber: 6)),
                            const Center(
                                child: Icon(CupertinoIcons.airplane,
                                    color: Colors.white))
                            //if want to rotate icon use widget transform.rotate
                          ],
                        ),
                      ),
                      BigDot(),
                      Expanded(
                        child: Container(),
                      ),
                      Textstylethird(text: "NYC")
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Textstyleforth(text: "New-York",),
                      ),

                      Expanded(
                        child: Container(),
                      ),
                      Textstyleforth(text: "8H:30M",),
                      Expanded(
                        child: Container(),
                      ),
                      SizedBox(
                        width: 100,
                        child: Textstyleforth(
                            text: "London",aling: TextAlign.end,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //circle ant dots
            Container(
              height: 20,
              color: Appstyle.ticketorange,
              child: Row(
                children: [
                  BigCurve(
                    isRight: false,
                  ),
                  Expanded(
                    child: AppLayoutBuilder(
                      randomnumber: 14,
                      width: 6,
                    ),
                  ),
                  BigCurve(isRight: true),
                ],
              ),
            ),
            //orange part ticket
            Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                  color: Appstyle.ticketorange,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColoumTextLayout(toptext: "1 May", bottomtext: "Date"),
                      AppColoumTextLayout(toptext: "08:00AM", bottomtext: "Departure time",aling: CrossAxisAlignment.center,),
                      AppColoumTextLayout(toptext: "23", bottomtext: "Number",aling: CrossAxisAlignment.end,),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
