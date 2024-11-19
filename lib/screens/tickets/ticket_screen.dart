import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/media.dart';
import 'package:ticket_app/Base/res/style/app_style.dart';
import 'package:ticket_app/Base/utilities/all_json.dart';
import 'package:ticket_app/Base/widgets/App_coloum_textlayout.dart';
import 'package:ticket_app/Base/widgets/App_layoutbuilder.dart';
import 'package:ticket_app/Base/widgets/Ticket_view.dart';
import 'package:ticket_app/screens/search/widget/app_tickets_tabs.dart';
import 'package:ticket_app/screens/tickets/widgets/ticket_info.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "Tickets",
            style: Appstyle.headline1.copyWith(fontSize: 40),
          ),
          SizedBox(
            height: 30,
          ),
          AppTicketsTabs(text1: "Upcoming ", text2: "Previous"),
          SizedBox(
            height: 30,
          ),
          TicketView(ticket: ticketList[0], isColor: false),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(right: 12),
            padding: EdgeInsets.all(25),
            color: Appstyle.ticketcolor,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColoumTextLayout(
                        toptext: "Flutter DB",
                        bottomtext: "passenger",
                        isColor: true,
                        aling: CrossAxisAlignment.start),
                    AppColoumTextLayout(
                      toptext: "1613 1654 1331",
                      bottomtext: "passenger",
                      isColor: true,
                      aling: CrossAxisAlignment.end,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                AppLayoutBuilder(
                  randomnumber: 14,
                  width: 6,
                  isColor: true,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColoumTextLayout(
                        toptext: "424c24242",
                        bottomtext: "Number of E_ticks",
                        isColor: true,
                        aling: CrossAxisAlignment.start),
                    AppColoumTextLayout(
                      toptext: "GDF4ff4242",
                      bottomtext: "booking coder",
                      isColor: true,
                      aling: CrossAxisAlignment.end,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                AppLayoutBuilder(
                  randomnumber: 14,
                  width: 6,
                  isColor: true,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              AppMedia.visa,
                              scale: 11,
                            ),
                            Text("****"),
                            Text(
                              "4324",
                              style: Appstyle.headlinestyle3,
                            ),
                          ],
                        ),
                        Text(
                          "Payment method",
                          style: Appstyle.headlinestyle4,
                        ),
                      ],
                    ),
                    AppColoumTextLayout(
                      toptext: "\$349.42",
                      bottomtext: "Price",
                      isColor: true,
                      aling: CrossAxisAlignment.end,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
                color: Appstyle.ticketcolor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
                child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BarcodeWidget(
                barcode: Barcode.code128(),
                height: 70,
                drawText: false,
                data: "https://ramkrishna-prajapati.jimdosite.com",
              ),
            )),
          ),
          SizedBox(height: 50,),
          TicketView(ticket: ticketList[0],),
        ],
      ),
    );
  }
}
