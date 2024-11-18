import 'package:flutter/material.dart';
import 'package:mobile_app/bse/bottom_nav_bar.dart';
import 'package:mobile_app/screens/home/all_hotels.dart';
import 'package:mobile_app/screens/home/all_tickets.dart';
import 'package:mobile_app/screens/hotel_detail.dart';
import 'package:mobile_app/screens/ticket/ticket_screen.dart';
import 'package:get/get.dart';
import 'bse/utils/app_routes.dart';

void main() {
  runApp(const MyApp());

}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homePage: (context)=> BottomNavBar(),
        AppRoutes.allTickets: (context)=>const AllTickets(),
        AppRoutes.ticketScreen:(context)=>const TicketScreen(),
        AppRoutes.allHotels:(context)=>const AllHotels(),
        AppRoutes.hotelDetail:(context)=>const HotelDetail(),
      },
    );
  }
}


