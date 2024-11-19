import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/utilities/all_json.dart';
import 'package:ticket_app/Base/widgets/Ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All tickets")),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map(
                    (singleticket) => GestureDetector(
                      onTap: () {
                        var index = ticketList.indexOf(singleticket);
                        print("ticket number $index");
                         Navigator.pushNamed(context, AppRoutes.ticketScreen,
                             arguments: {"index": index});
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 40),
                        child: TicketView(
                          ticket: singleticket,
                          wholescreen: true,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
