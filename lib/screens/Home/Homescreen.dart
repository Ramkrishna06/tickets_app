import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/media.dart';
import 'package:ticket_app/Base/utilities/all_json.dart';
import 'package:ticket_app/Base/widgets/App_Double_text.dart';
import 'package:ticket_app/Base/widgets/Ticket_view.dart';
import 'package:ticket_app/screens/Home/widget/hotel.dart';
import 'package:ticket_app/screens/Home/Hotelscreen.dart';


import '../../Base/res/style/app_style.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
            //padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: Appstyle.headlinestyle3),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Book Tickets", style: Appstyle.headline1),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_filled,
                        color: Color(0xFFBFC250),
                      ),
                      Text("Search Here"),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                AppDoubleText(
                  bigtext: "Upcoming Flight",
                  smalltext: "View all",
                  func: () => Navigator.pushNamed(context, "all_tickets"),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection:
                      Axis.horizontal, //this line is most important
                  child: Row(
                    children: ticketList
                        .take(3)
                        .map((singleticket) => TicketView(ticket: singleticket))
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                AppDoubleText(
                  bigtext: "Hotels",
                  smalltext: "View all",
                  func: () => Navigator.pushNamed(context, "hotel_screen"),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .map(
                          (fristhotel) => Container(
                            padding: EdgeInsets.all(10),
                            child: HotelSection(hoteldetails: fristhotel),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
