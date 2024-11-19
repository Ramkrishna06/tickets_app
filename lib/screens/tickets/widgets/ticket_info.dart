import 'package:flutter/cupertino.dart';
import 'package:ticket_app/Base/utilities/all_json.dart';
import 'package:ticket_app/Base/widgets/Ticket_view.dart';

class TicketInfo extends StatelessWidget {
  const TicketInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ticketList.take(1).map((singleticket)
          =>TicketView(ticket: singleticket)
      ).toList(),
    );
  }
}
