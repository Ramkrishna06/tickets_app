import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ticket_app/Provider/bottom_nav_provider.dart';
import 'package:ticket_app/screens/profile/profile.dart';
import 'package:ticket_app/screens/search/search_screen.dart';
import 'package:ticket_app/screens/tickets/ticket_screen.dart';
import 'package:get/state_manager.dart';

import '../controller/bottom_nav_controller.dart';
import '../screens/Home/Homescreen.dart';

class BottomNavBar extends ConsumerWidget {
  BottomNavBar({super.key});


   //dependency injection(getx injection)
  //final BottomNavController controller = Get.put(BottomNavController());

  final appscreen = [
    const Homescreen(),
    const SearchScreen(),
    const TicketScreen(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    var selectedIndex=ref.watch(bottomNavBarNotifierProvider);
    //Obx is introduced to make UI reactive.
    // return Obx(() {
    //  return Scaffold(
    //         body: appscreen[controller.selectedIndex.value],
    //         bottomNavigationBar: BottomNavigationBar(
    //           currentIndex: controller.selectedIndex.value,
    //           onTap: controller.onItemTap,
    //           selectedItemColor: Colors.green,
    //           unselectedItemColor: Colors.black54,
    //           showSelectedLabels: false,
    //           items: const [
    //             BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    //             BottomNavigationBarItem(icon: Icon(Icons.search), label: "Setting"),
    //             BottomNavigationBarItem(
    //                 icon: Icon(Icons.airplane_ticket_outlined), label: "tickets"),
    //             BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
    //           ],
    //         ),
    //       );
    // });
    return Scaffold(
      body: appscreen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: ref.watch(bottomNavBarNotifierProvider.notifier).onItemTap,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Setting"),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket_outlined), label: "tickets"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
      ),
    );
  }
}
