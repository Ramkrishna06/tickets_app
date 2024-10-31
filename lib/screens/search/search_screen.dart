import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/style/app_style.dart';
import 'package:ticket_app/Base/widgets/App_Double_text.dart';
import 'package:ticket_app/screens/search/widget/app_text-icon.dart';
import 'package:ticket_app/screens/search/widget/app_tickets_tabs.dart';
import 'package:ticket_app/screens/search/widget/find_tickets.dart';
import 'package:ticket_app/screens/search/widget/seach_img_section.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appstyle.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Text(
            "What are\nyou looking for?",
            style: Appstyle.headline1.copyWith(fontSize: 43),
          ),
          SizedBox(
            height: 40,
          ),
          AppTicketsTabs(),
          SizedBox(
            height: 30,
          ),
          ApptextIcon(
            text: "Departure",
            icon: Icons.flight_takeoff_rounded,
          ),
          SizedBox(
            height: 20,
          ),
          ApptextIcon(
            text: "Arrival",
            icon: Icons.flight_takeoff_rounded,
          ),
          SizedBox(
            height: 25,
          ),
          FindTickets(),
          SizedBox(
            height: 40,
          ),
          AppDoubleText(
            bigtext: "Upcoming Flights",
            smalltext: "View all",
            func: () => Navigator.pushNamed(context, "all_tickets"),
          ),
          SizedBox(height: 20,),
          Imagesection(),
        ],
      ),
    );
  }
}
