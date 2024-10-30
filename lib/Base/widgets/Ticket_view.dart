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
  Map<String, dynamic> ticket;//this is map name as ticket containing necessery information about tickets
  TicketView({super.key, required this.ticket,this.wholescreen=false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      child: Container(
        margin: EdgeInsets.only(right: wholescreen==true? 0:16),
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
                      Textstylethird(text: ticket["from"]["code"]),
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
                      Textstylethird(text: ticket["to"]["code"]),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Textstyleforth(
                          text: ticket["from"]["name"],
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Textstyleforth(
                        text: ticket["flying_time"],
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      SizedBox(
                        width: 100,
                        child: Textstyleforth(
                          text: ticket["to"]["name"],
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColoumTextLayout(toptext: ticket["date"], bottomtext: "Date"),
                  AppColoumTextLayout(
                    toptext: ticket["departure_time"],
                    bottomtext: "Departure time",
                    aling: CrossAxisAlignment.center,
                  ),
                  AppColoumTextLayout(
                    toptext: ticket["number"].toString(),
                    bottomtext: "Number",
                    aling: CrossAxisAlignment.end,
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
