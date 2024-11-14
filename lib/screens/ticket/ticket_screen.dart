import 'package:flutter/material.dart';
import 'package:mobile_app/bse/res/styles/app_styles.dart';
import 'package:mobile_app/bse/utils/app_json.dart';
import 'package:mobile_app/bse/widgets/ticket_view.dart';
import 'package:mobile_app/screens/search/widgets/app_ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40,),
          Text("Tickets", style: AppStyles.headLineStyle2,),
          const SizedBox(height: 20,),
          const AppTicketTabs(
            firstTab: "Upcoming",
            secondTab: "Previous",
          ),
          const SizedBox(height: 20,),
          Container(

            padding:  const EdgeInsets.only(left: 16),
              child: TicketView(ticket: ticketList[0], isColor: true,)
          ),
        ],
      ),
    );
  }
}
