import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/bse/utils/app_json.dart';
import 'package:mobile_app/bse/utils/app_routes.dart';
import 'package:mobile_app/bse/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map((singleTicket) => GestureDetector(
                onTap: (){
                  var index = ticketList.indexOf(singleTicket);
                  print("Yes $index");

                  Navigator.pushNamed(context, AppRoutes.ticketScreen, arguments: {
                    "index": index
                  });
                },
                    child: Container(
                                    margin: const EdgeInsets.only(bottom: 20),
                    child: TicketView(ticket: singleTicket, wholeScreen: true,)),
                  ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
