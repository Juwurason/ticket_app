import 'package:flutter/material.dart';
import 'package:mobile_app/bse/res/styles/app_styles.dart';
import 'package:mobile_app/bse/utils/app_routes.dart';
import 'package:mobile_app/bse/widgets/app_double_text.dart';
import 'package:mobile_app/bse/widgets/find_tickets.dart';
import 'package:mobile_app/bse/widgets/ticket_promotion.dart';
import 'package:mobile_app/screens/search/widgets/app_text_icon.dart';
import 'package:mobile_app/screens/search/widgets/app_ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "What are\n you looking for?",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(
            firstTab: "All Tickets",
            secondTab: "Hotels",
          ),
          const SizedBox(
            height: 25,
          ),
          const AppTextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTextIcon(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          const SizedBox(
            height: 25,
          ),
          const FindTickets(),
          const SizedBox(
            height: 40,
          ),
          AppDoubleText(
            bigTest: 'Upcoming Flights',
            smallTest: 'View all',
            func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
          ),
          const SizedBox(
            height: 15,
          ),
          const TicketPromotion(),
        ],
      ),
    );
  }
}
