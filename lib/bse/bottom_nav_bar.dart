import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/controller/bottom_nav_controller.dart';
import 'package:mobile_app/screens/home/home_screen.dart';
import 'package:mobile_app/screens/profile/profile.dart';
import 'package:mobile_app/screens/search/search_screen.dart';
import 'package:mobile_app/screens/ticket/ticket_screen.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
   BottomNavBar({super.key});

//dependency injection
final BottomNavController controller = Get.put(BottomNavController());

  //list is iterated using index

  final appScreen = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];



  @override
  Widget build(BuildContext context) {
    return Obx((){
      return  Scaffold(

        body: appScreen[controller.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.onItemTapped,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526400),
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "Tickets"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: "Profile")
          ],
        ),
      );
    });
  }
}
