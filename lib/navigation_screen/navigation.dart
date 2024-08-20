// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:travelbuddy/navigation_page/activity_section_screen.dart';
import 'package:travelbuddy/navigation_page/explore_screen.dart';
import 'package:travelbuddy/navigation_page/home_screen.dart';
import 'package:travelbuddy/navigation_page/profile_screen.dart';
import 'package:travelbuddy/navigation_page/search_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  var currentIndex = 0;
  List bodyName = [
    HomeScreen(),
    ExploreSectionSreen(),
    SearchScreen(),
    ActivitySectionPage(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: bodyName.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        iconSize: h * .04,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,

        // ignore: prefer_const_literals_to_create_immutables
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          const BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: ""),
          const BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: "")
        ],
      ),
    );
  }
}
