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
  final bool wholescreen;
  Map<String, dynamic>
      ticket; //this is map name as ticket containing necessery information about tickets
  final bool? isColor;
  TicketView(
      {super.key,
      required this.ticket,
      this.wholescreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      child: Container(

        margin: EdgeInsets.only(right: wholescreen == true ? 0 : 12),


        child: Column(
          children: [
            //blue part ticket
            Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: isColor == null
                    ? Appstyle.ticketBlue
                    : Appstyle.ticketcolor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Textstylethird(
                        text: ticket["from"]["code"],
                        isColor: isColor,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 25,
                              child: AppLayoutBuilder(
                                randomnumber: 6,
                                isColor: isColor,
                              ),
                            ),
                            Center(
                              child: isColor == null
                                  ? Icon(CupertinoIcons.airplane,
                                      color: Colors.white)
                                  : Icon(CupertinoIcons.airplane,
                                      color: Colors.lightBlue),
                            ),
                            //if want to rotate icon use widget transform.rotate
                          ],
                        ),
                      ),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Textstylethird(
                        text: ticket["to"]["code"],
                        isColor: isColor,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Textstyleforth(
                          text: ticket["from"]["name"],
                          isColor: isColor,
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Textstyleforth(
                        text: ticket["flying_time"],
                        isColor: isColor,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      SizedBox(
                        width: 100,
                        child: Textstyleforth(
                          text: ticket["to"]["name"],
                          isColor: isColor,
                          aling: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //circle ant dots
            Container(
              height: 20,
              color: isColor == null
                  ? Appstyle.ticketorange
                  : Appstyle.ticketcolor,
              child: Row(
                children: [
                  BigCurve(
                    isRight: false,
                    isColor:isColor,
                  ),
                  Expanded(
                    child: AppLayoutBuilder(
                      randomnumber: 14,
                      width: 6,
                      isColor: isColor,
                    ),
                  ),
                  BigCurve(isRight: true,isColor: isColor,),
                ],
              ),
            ),
            //orange part ticket
            Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                  color: isColor == null
                      ? Appstyle.ticketorange
                      : Appstyle.ticketcolor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor==null?21:0),
                      bottomRight: Radius.circular(isColor==null?21:0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColoumTextLayout(
                      toptext: ticket["date"], bottomtext: "Date",isColor: isColor,),
                  AppColoumTextLayout(
                    toptext: ticket["departure_time"],
                    bottomtext: "Departure time",
                    aling: CrossAxisAlignment.center,
                    isColor: isColor,
                  ),
                  AppColoumTextLayout(
                    toptext: ticket["number"].toString(),
                    bottomtext: "Number",
                    aling: CrossAxisAlignment.end,
                    isColor: isColor,
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
