import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/style/app_style.dart';
import 'package:ticket_app/Base/widgets/App_layoutbuilder.dart';
import 'package:ticket_app/Base/widgets/Big_Dot.dart';
import 'package:ticket_app/Base/widgets/Big_curve.dart';

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
                      Text(
                        "NYC",
                        style: Appstyle.headlinestyle3
                            .copyWith(color: Colors.white),
                      ),
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
                      Text(
                        "NYC",
                        style: Appstyle.headlinestyle3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "New-york",
                        style: Appstyle.headlinestyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "8H 30M",
                        style: Appstyle.headlinestyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "London",
                        style: Appstyle.headlinestyle3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
              color: Appstyle.ticketorange,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigCurve(isRight: false,),
                  BigCurve(isRight: true),
                ],
              ),
            ),
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
                    children: [
                      Text(
                        "NYC",
                        style: Appstyle.headlinestyle3
                            .copyWith(color: Colors.white),
                      ),
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
                      Text(
                        "NYC",
                        style: Appstyle.headlinestyle3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "New-york",
                        style: Appstyle.headlinestyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "8H 30M",
                        style: Appstyle.headlinestyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "London",
                        style: Appstyle.headlinestyle3
                            .copyWith(color: Colors.white),
                      ),
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
