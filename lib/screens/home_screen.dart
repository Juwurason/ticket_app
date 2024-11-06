import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/bse/res/styles/app_styles.dart';
import 'package:mobile_app/bse/widgets/app_double_text.dart';
import 'package:mobile_app/bse/widgets/ticket_view.dart';

import '../bse/res/media.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
     backgroundColor: AppStyles.bgColor,
      body:ListView(
        children: [
          const SizedBox(height: 40,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: AppStyles.headLineStyle3,),
                        const SizedBox(height: 5,),
                        Text("Book Tickets",  style: AppStyles.headLineStyle1,)
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                       image: const DecorationImage(image: AssetImage(AppMedia.logo))
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD),
                  ),
                  child: const Row(
                    // mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205),),
                  Text("Search"),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const AppDoubleText(bigTest: 'Upcoming Flights', smallTest: 'View all'),
                const SizedBox(height: 20),
                const TicketView()
              ],
            ),
          ),

        ],
      ),
    );
  }
}